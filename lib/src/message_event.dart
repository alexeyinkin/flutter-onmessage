/// A copy of JavaScript's `MessageEvent` class that does not depend on
/// JavaScript library and can be used on other platforms.
class MessageEvent {
  final bool bubbles;
  final bool cancellable;
  final Object? data;
  final String? origin;
  final String? lastEventId;

  /// JavaScript's EventTarget object.
  final Object? source;

  /// JavaScript's MessagePort objects.
  final List<Object> ports;

  MessageEvent({
    required this.bubbles,
    required this.cancellable,
    required this.data,
    required this.origin,
    required this.lastEventId,
    required this.source,
    required this.ports,
  });
}
