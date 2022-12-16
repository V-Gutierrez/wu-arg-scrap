import execCmd from './execCmd';

/**
 * It takes a topic, a message, and a target, and sends a notification to the target
 * @param {string} topic - The topic of the message.
 * @param {string} message - The message to send to the subscribers.
 * @param {string} subscribersTarget - The target to send the notification to. This is the same as the
 * target you used when you subscribed to the topic.
 */
function notifyExchangeSubscribers(topic: string, message: string, subscribersTarget: string) {
  execCmd(`curl -d "[${topic}] ${message}" ntfy.sh/${subscribersTarget}`)
};

export default notifyExchangeSubscribers