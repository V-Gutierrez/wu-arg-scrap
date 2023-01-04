export const JOBS = [
  {
    jobIdentifier: 'WESTERN_UNION_BRL_ARS',
    cron: '*/60 8-20 * * *',
    cmd: `source src/scripts/fetching/BRL_ARS.sh --target WU-BRL-ARS`
  },
  {
    jobIdentifier: 'WESTERN_UNION_BRL_USD',
    cron: '*/60 8-20 * * *',
    cmd: `source src/scripts/fetching/BRL_USD.sh --target WU-BRL-USD`
  },
  {
    jobIdentifier: 'HEALTH_CHECK',
    cron: '*/10 * * * *',
    cmd: `echo "Online @ $(date)"`
  }
]