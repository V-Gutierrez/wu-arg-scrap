import { exec } from 'child_process'

/**
 * It takes a string as an argument, and returns the result of executing the string as a command in the
 * terminal
 * @param {string} cmd - The command to be executed.
 * @returns The child process
 */
function execCmd(cmd: string) {
  return exec(cmd, (error, stdout, stderr) => {
    if (error)
      console.log('[Error]: ', error.message)
    if (stderr)
      console.log('[STDError]', stderr)
    if (stdout)
      console.log('[STDOut]:', stdout)
  })
}

export default execCmd