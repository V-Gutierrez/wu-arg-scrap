/**
 * It takes a generic type T and returns a string
 * @param {T} item - T - The item to be converted to JSON.
 * @returns A function that takes a generic type and returns a string.
 */
function toJSON<T>(item: T): string {
  return JSON.stringify(item)
}

export default toJSON