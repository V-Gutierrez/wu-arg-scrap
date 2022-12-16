import cron from 'node-cron'
import execCmd from './helpers/execCmd'
import notifyExchangeSubscribers from './helpers/notifyExchangeSubscribers';
import parseFxOutput from './helpers/parseFxOutput';
import { WU_STANDARD_API_CALL } from './services/wuapi';

/* A cron job that runs every minute. */
cron.schedule('*/15 * * * * *', async () => {
  const { stdout: grepOutput } = execCmd(`src/scripts/fetch_data.sh | grep -o '"fx_rate":[[:digit:]]....'`)

  if (Boolean(String(grepOutput))) {
    const currentPrice = parseFxOutput(String(grepOutput))

    notifyExchangeSubscribers('WUARGENTINA', `1 BRL = ${currentPrice} ARS`, 'WUARGENTINA')
  }
})
