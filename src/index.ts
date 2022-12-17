import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'

const JOBS = {
  WESTERN_UNION_BRL_ARS: {
    cron: '*/60 8-22 * * *',
    cmd: `source ${__dirname}/scripts/BRL_ARS.sh --target WU-BRL-ARS`
  }
}

const JOBS_AMOUNT = Object.keys(JOBS).length

console.log(`Server is online and has currently ${JOBS_AMOUNT} jobs running.`)

Object.values(JOBS).forEach(job => {
  cron.schedule(job.cron, () => {
    execCmd(job.cmd)
  })
})
