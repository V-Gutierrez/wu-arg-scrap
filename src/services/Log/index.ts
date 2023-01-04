
import toJSON from '../../helpers/toJSON';
class Log {
  private generateTimestamp() {
    return new Date(Date.now())
  }

  info<T>(message: T) {
    console.info(`[INFO] [${this.generateTimestamp()}]`, message)
  }

  error<T>(message: string, load: T) {
    console.error(`[ERROR] [${this.generateTimestamp()}] ${message}`, toJSON(load))
  }

  fatal<T>(message: string, load: T) {
    console.error(`[FATAL] [${this.generateTimestamp()}] ${message}`, toJSON(load))
  }

  trace(message: string) {
    console.info(`[TRACE] [${this.generateTimestamp()}] ${message}`)
  }

  warn(message: string) {
    console.warn(`[WARNING] [${this.generateTimestamp()}] ${message}`)
  }

  debug(message: string) {
    console.log(`[DEBUG] [${this.generateTimestamp()}] ${message}`)
  }
}


export default new Log()