/**
 * It takes a string, splits it on the colon, and returns the second value
 * @param {string} output - The output of the command that was run.
 * @returns The value of the fxValue variable.
 */
function parseFxOutput(output: string) {
  const { 1: fxValue } = output.split(':')

  return fxValue
}


export default parseFxOutput