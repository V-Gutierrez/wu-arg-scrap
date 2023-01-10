import cron from 'node-cron'
import execCmd from '../helpers/execCmd'
import Logger from '../helpers/logger'

interface Job {
  jobIdentifier: string
  cron: string
  cmd: string
}

class CronScheduler {
  constructor(jobs: Job[]) {
    Logger.trace('[CRON Service] Initialized instance')
    this.scheduleJobs(jobs)
    Logger.trace(`[CRON Service] ${jobs.length} jobs running`)
  }

  private scheduleJobs(jobs: Job[]): void {
    jobs.forEach(job => {
      cron.schedule(job.cron, () => {
        Logger.info(`[CRON Service] Running job: ${job.jobIdentifier}`)
        execCmd(job.cmd)
      })
    })
  }
}

export default CronScheduler