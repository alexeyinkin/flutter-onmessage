import 'dart:async';

import 'package:meta/meta.dart';

import 'message_event.dart';

/// The wrapper to the message stream.
/// Has a web and a non-web implementations.
abstract class OnMessageAbstract {
  final _streamController = StreamController<MessageEvent>.broadcast();

  /// The stream of events as they are received by the window.
  Stream<MessageEvent> get stream => _streamController.stream;

  /// Adds [message] to the stream.
  @protected
  void addMessage(MessageEvent message) {
    _streamController.add(message);
  }

  /// Closes the stream so that this object can never be used again.
  @mustCallSuper
  void dispose() {
    _streamController.close();
  }
}
