
import toJSON from '../../helpers/toJSON';
class Log {
  private generateTimestamp() {
    return new Date(Date.now())
  }

   info<T>(load: T) {
    console.info(`[${this.generateTimestamp()}]`, load)
  }

   error<T>(message: string, load: T) {
    console.error(message, toJSON(load))
  }
}


export default new Log()