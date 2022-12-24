import { ExecException, exec } from 'child_process'

/**
 * It takes a string as an argument, and returns the result of executing the string as a command in the
 * terminal
 * @param {string} cmd - The command to be executed.
 * @returns The child process
 */

type ExecCmdCallback = (error: ExecException | null, stdout: string, stderr: string) => void
function execCmd(cmd: string, callbackFunc?: ExecCmdCallback) {
  const defaultCallback: ExecCmdCallback = (error, stdout, stderr) => {
    if (error)
      console.log('[Runtime Error]: ', error.message)
    if (stderr)
      console.log(stderr)
    if (stdout)
      console.log(stdout)
  }

  return exec(cmd, callbackFunc || defaultCallback)
}

export default execCmd