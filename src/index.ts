
import 'dotenv/config'
import CronScheduler from './cron';
import Server from './api';
import Log from './services/Log';
import { JOBS } from './cron/jobs';

try {
  new CronScheduler(JOBS)
  new Server()
} catch (error) {
  Log.fatal('[MAIN] - Error occurred on application entry point', error)
}
