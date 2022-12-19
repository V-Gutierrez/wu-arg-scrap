import { exec } from 'child_process'

/**
 * It takes a string as an argument, and returns the result of executing the string as a command in the
 * terminal
 * @param {string} cmd - The command to be executed.
 * @returns The child process
 */
function execCmd(cmd: string) {
  console.log('Running: ', cmd)
  return exec(cmd, (error, stdout, stderr) => {
    if (error)
      console.log('[Runtime Error]: ', error.message)
    if (stderr)
      console.log(stderr)
    if (stdout)
      console.log(stdout)
  })
}

export default execCmd