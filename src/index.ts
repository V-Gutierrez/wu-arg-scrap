import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'
import server from './api/server';

const PORT = process.env.PORT || 5858

const JOBS = {
  WESTERN_UNION_BRL_ARS: {
    cron: '*/60 8-20 * * *',
    cmd: `source ${__dirname}/scripts/BRL_ARS.sh --target WU-BRL-ARS`
  },
  WESTERN_UNION_BRL_USD: {
    cron: '*/60 8-20 * * *',
    cmd: `source ${__dirname}/scripts/BRL_USD.sh --target WU-BRL-USD`
  },
  HEALTH_CHECK: {
    cron: '*/10 * * * *',
    cmd: `echo "[Health Check] - Online @ $(date)"`
  }
}

const JOBS_AMOUNT = Object.keys(JOBS).length

console.log(`JOBS Server is online and has currently ${JOBS_AMOUNT} jobs running.`)

Object.values(JOBS).forEach(job => {
  cron.schedule(job.cron, () => {
    execCmd(job.cmd)
  })
})

server.listen(PORT, () => {
  console.log(`API Server running and listening on port ${PORT}`)
})