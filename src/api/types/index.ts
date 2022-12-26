import { IncomingMessage, ServerResponse } from 'http'

export interface Route {
  readonly method: string
  readonly routeUrl: string
  implementation(req: IncomingMessage, res: ServerResponse): void
}
