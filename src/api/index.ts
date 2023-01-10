import http from 'http'
import ConvertionRoute from './routes/ConvertionRoute'
import Logger from '../helpers/logger'

class Server {
  private readonly PORT = process.env.PORT || 5858

  constructor() {
    http.createServer(function (req, res) {
      Logger.info(`[API Service] - ${req.method} ${req.url}`)

      // Routes implementation
      new ConvertionRoute(
        'GET',
        '/convertion/:originCurrencyAcronym/:currencyAcronyn/:value',
        req,
        res
      )
      // Routes implementation
    })
      .listen(this.PORT)

    Logger.info(`[API Service] Initialized instance on port ${this.PORT}`)
  }
}


export default Server