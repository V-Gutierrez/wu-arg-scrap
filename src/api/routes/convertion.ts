import type {
  IncomingMessage,
  ServerResponse
} from 'http'
import parseUrl from '../../helpers/parseUrl'
import execCmd from '../../helpers/execCmd';

const ROUTE_CONFIG = {
  url: '/convertion/:originCurrencyAcronym/:currencyAcronyn/:value',
  method: 'GET'
}

export default async function (req: IncomingMessage, res: ServerResponse<IncomingMessage>) {
  const { url, method } = req
  const { 2: originCurrencyAcronym, 3: currencyAcronyn, 4: value } = parseUrl(url as string)

  const calledUrl = ROUTE_CONFIG.url
    .replace(':originCurrencyAcronym', originCurrencyAcronym)
    .replace(':currencyAcronyn', currencyAcronyn)
    .replace(':value', value)

  if (url === calledUrl && method === ROUTE_CONFIG.method) {
    try {
      execCmd(`chmod +x src/scripts/conversion/convert.sh`)
      execCmd(`src/scripts/conversion/convert.sh ${value} ${currencyAcronyn}`, (_, stdout, stderror) => {
        res.writeHead(200, { 'Content-Type': 'application/json' })

        const convertedValue = Number(stdout) * Number(value)

        res.write(
          JSON.stringify({
            value: `${value} ${originCurrencyAcronym}`,
            convertedAmount: `${convertedValue} ${currencyAcronyn}`,
            lastPrice: stdout.replace('\n', ` ${currencyAcronyn}`)
          }))
        res.end()
      })


    } catch (error) {
      res.writeHead(500, { 'Content-Type': 'application/json' })
      res.write('Internal Server Error')
      res.end()
    }
  }
}