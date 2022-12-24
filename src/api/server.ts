import http from 'http'
import ConvertionRoute from './routes/convertion'


const server = http.createServer(function (req, res) {
  ConvertionRoute(req, res)
})

export default server