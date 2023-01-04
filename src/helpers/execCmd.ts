import { ExecException, exec } from 'child_process'
import Log from '../services/Log'

type ExecCmdCallback = (error: ExecException | null, stdout: string, stderr: string) => void

const defaultCallback: ExecCmdCallback = (error, stdout, stderr) => {
    if (error)
      Log.error('[Runtime Error]: ', error.message)
    if (stderr)
      Log.error(stderr, stderr)
    if (stdout)
      Log.info(stdout)
  }

/**
 * It executes a command and logs the output to the console
 * @param {string} cmd - The command to execute.
 * @param {ExecCmdCallback} [callbackFunc] - This is the callback function that will be called when the
 * command is executed.
 * @returns The exec (child_proccess) function is being returned.
 */
function execCmd(cmd: string, callbackFunc?: ExecCmdCallback) {
  return exec(cmd, callbackFunc || defaultCallback)
}

export default execCmd