import cron from 'node-cron'
import execCmd from '../helpers/execCmd'
import Log from '../services/Log'

interface Job {
  jobIdentifier: string
  cron: string
  cmd: string
}

class Cron {
  constructor(jobs: Job[]) {
    Log.info('[CRON Service] Initialized Instance')
    this.scheduleJobs(jobs)

    Log.info(`[CRON Service] ${jobs.length} jobs running`)
  }

  scheduleJobs(jobs: Job[]): void {
    jobs.forEach(job => {
      cron.schedule(job.cron, () => {
        Log.info(`[CRON Service] Running job: ${job.jobIdentifier}`)
        execCmd(job.cmd)
      })
    })
  }
}

export default Cron