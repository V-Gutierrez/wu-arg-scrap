import http from 'http'
import ConvertionRoute from './routes/convertion'
import Log from '../services/Log'

class Server {
  private readonly PORT = process.env.PORT || 5858

  constructor() {
    http.createServer(function (req, res) {
      Log.info(`[API Service] - ${req.method} ${req.url}`)

      // Routes implementation
      new ConvertionRoute(
        'GET',
        '/convertion/:originCurrencyAcronym/:currencyAcronyn/:value',
        req,
        res)
      // Routes implementation
    })
      .listen(this.PORT)

    Log.info(`[API Service] Initialized Instance on port ${this.PORT}`)
  }
}


export default Server