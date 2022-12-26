import type {
  IncomingMessage,
  ServerResponse
} from 'http'

import execCmd from '../../helpers/execCmd';
import { Route } from '../types';
import parseUrl from '../../helpers/parseUrl';
import toJSON from '../../helpers/toJSON';

class ConvertionRoute implements Route {
  constructor(
    readonly method: string,
    readonly routeUrl: string,
    req: IncomingMessage,
    res: ServerResponse
  ) {
    this.method = method
    this.routeUrl = routeUrl
    this.implementation(req, res)
  }

  async implementation(req: IncomingMessage, res: ServerResponse) {
    try {
      const { url: receivedUrl, method } = req
      const routeParams = parseUrl(receivedUrl as string)
      const { 2: originCurrencyAcronym, 3: currencyAcronyn, 4: value } = routeParams

      const calledUrl = this.routeUrl
        .replace(':originCurrencyAcronym', originCurrencyAcronym)
        .replace(':currencyAcronyn', currencyAcronyn)
        .replace(':value', value)

      if (receivedUrl === calledUrl && method === this.method) {
        execCmd(`chmod +x src/scripts/conversion/convert.sh`)
        execCmd(`src/scripts/conversion/convert.sh ${value} ${currencyAcronyn}`, (_, stdout) => {
          res.writeHead(200, { 'Content-Type': 'application/json' })

          const convertedValue = Number(stdout) * Number(value)

          res.write(
            toJSON({
              value: `${value} ${originCurrencyAcronym}`,
              convertedAmount: `${convertedValue} ${currencyAcronyn}`,
              lastPrice: stdout.replace('\n', ` ${currencyAcronyn}`)
            }))
          res.end()
        })

      }
    } catch (error) {
      res.writeHead(500, { 'Content-Type': 'application/json' })
      res.write(toJSON({ message: "Internal Server Error", status: 500 }))
      res.end()
    }
  }
}

export default ConvertionRoute