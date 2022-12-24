import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'
import server from './api/server';

const PORT = process.env.PORT || 5858

const JOBS = {
  WESTERN_UNION_BRL_ARS: {
    jobIdentifier: 'WESTERN_UNION_BRL_ARS',
    cron: '*/60 8-20 * * *',
    cmd: `source ${__dirname}/scripts/fetching/BRL_ARS.sh --target WU-BRL-ARS`
  },
  WESTERN_UNION_BRL_USD: {
    jobIdentifier: 'WESTERN_UNION_BRL_USD',
    cron: '*/60 8-20 * * *',
    cmd: `source ${__dirname}/scripts/fetching/BRL_USD.sh --target WU-BRL-USD`
  },
  HEALTH_CHECK: {
    jobIdentifier: 'HEALTH_CHECK',
    cron: '*/10 * * * *',
    cmd: `echo "[Health Check] - Online @ $(date)"`
  }
}

const JOBS_AMOUNT = Object.keys(JOBS).length


Object.values(JOBS).forEach(job => {
  cron.schedule(job.cron, () => {
    console.log(`Running: ${job.jobIdentifier}`)
    execCmd(job.cmd)
  })
})

console.log(`JOBS Server is online and has currently ${JOBS_AMOUNT} jobs running.`)
server.listen(PORT, () => {
  console.log(`API Server running and listening on port ${PORT}`)
})