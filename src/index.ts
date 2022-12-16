import cron from 'node-cron'
import execCmd from './helpers/execCmd';
import 'dotenv/config'

/* Running the fetch_data.sh script every 30 minutes. */
cron.schedule('*/30 * * * *', async () => {
  execCmd(`source ${__dirname}/scripts/fetch_data.sh | grep -o '"fx_rate":[[:digit:]]....'`)
})
