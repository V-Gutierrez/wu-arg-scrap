
class Log {
  static info<T>(load: T) {
    console.info(`[${new Date(Date.now())}]`, load)
  }
}


export default Log