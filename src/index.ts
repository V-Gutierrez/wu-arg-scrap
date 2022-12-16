import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'

/* A cron job that runs every minute. */
cron.schedule('*/5 * * * * *', async () => {
  execCmd(`source ${__dirname}/scripts/fetch_data.sh | grep -o '"fx_rate":[[:digit:]]....'`)
})
