/**
 * It takes a string and returns an array of strings
 * @param {string} url - The URL to parse.
 * @returns An array of strings
 */
function parseUrl(url: string): string[] {
  return url.split('/')
}

export default parseUrl