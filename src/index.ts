import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'

const JOBS = {
  WESTERN_UNION_ARS_BRL: {
    cron: '*/30 8-22 * * *',
    cmd: `source ${__dirname}/scripts/fetch_data.sh`
  }
}
console.log(`Server is running and has currently ${Object.keys(JOBS).length} jobs running.`)

Object.values(JOBS).forEach(job => {
  cron.schedule(job.cron, () => {
    execCmd(job.cmd)
  })
})
