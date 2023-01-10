
import 'dotenv/config'
import CronScheduler from './cron';
import Server from './api';
import Logger from './helpers/logger';
import { JOBS } from './cron/jobs';

try {
  new CronScheduler(JOBS)
  new Server()
} catch (error) {
  Logger.fatal('[MAIN] - Error occurred on application entry point', error)
}
