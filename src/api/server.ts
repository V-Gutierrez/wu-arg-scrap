import http from 'http'
import ConvertionRoute from './routes/convertion'


const server = http.createServer(function (req, res) {
  console.log(`[API Service] - ${req.method} ${req.url}`)
  ConvertionRoute(req, res)
})

export default server