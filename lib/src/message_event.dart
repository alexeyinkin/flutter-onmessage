import 'dart:convert';

/// A copy of JavaScript's `MessageEvent` class that does not depend on
/// JavaScript library and can be used on other platforms.
class MessageEvent {
  /// Whether the event bubbles up through the DOM tree or not.
  final bool bubbles;

  /// whether the event can be canceled, and therefore prevented as if
  /// the event never happened.
  final bool cancellable;

  /// The data sent by the message emitter.
  final Object? data;

  /// The origin of the message emitter.
  final String? origin;

  /// A unique ID for the event.
  final String? lastEventId;

  /// JavaScript's EventTarget object.
  final Object? source;

  /// JavaScript's MessagePort objects.
  final List<Object> ports;

  ///
  MessageEvent({
    required this.bubbles,
    required this.cancellable,
    required this.data,
    required this.origin,
    required this.lastEventId,
    required this.source,
    required this.ports,
  });

  @override
  String toString() => jsonEncode({
        'data': data,
        'origin': origin,
        'lastEventId': lastEventId,
        'bubbles': bubbles,
        'cancellable': cancellable,
        'source': source,
        'ports': ports,
      });
}
