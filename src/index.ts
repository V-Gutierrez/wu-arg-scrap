import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'

const JOBS = {
  WESTERN_UNION: {
    cron: '*/30 * * * *',
    cmd: `source ${__dirname}/scripts/fetch_data.sh`
  }
}

console.log(`Server is running and has currently ${Object.keys(JOBS).length} jobs running.`)

/* Running the fetch_data.sh script every 30 minutes. */
cron.schedule(JOBS.WESTERN_UNION.cron, () => {
  execCmd(JOBS.WESTERN_UNION.cmd)
})
