class MessageEvent {
  final bool bubbles;
  final bool cancellable;
  final Object? data;
  final String? origin;
  final String? lastEventId;

  // Missing Window? source;
  // Missing List<MessagePort> messagePorts;

  MessageEvent({
    required this.bubbles,
    required this.cancellable,
    required this.data,
    required this.origin,
    required this.lastEventId,
  });
}
