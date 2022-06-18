import 'dart:async';

import 'package:meta/meta.dart';

import 'message_event.dart';

abstract class OnMessageAbstract {
  final _streamController = StreamController<MessageEvent>.broadcast();
  Stream<MessageEvent> get stream => _streamController.stream;

  @protected
  void addMessage(MessageEvent message) {
    _streamController.add(message);
  }

  @mustCallSuper
  void dispose() {
    _streamController.close();
  }
}
