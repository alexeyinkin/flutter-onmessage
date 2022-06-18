import 'dart:async';
import 'dart:html' as html;

import 'message_event.dart';
import 'onmessage_abstract.dart';

class OnMessage extends OnMessageAbstract {
  StreamSubscription? _streamSubscription;

  OnMessage() {
    _streamSubscription = html.window.onMessage.listen((event) {
      addMessage(
        MessageEvent(
          bubbles: event.bubbles ?? false,
          cancellable: event.cancelable ?? false,
          data: event.data,
          origin: event.origin,
          lastEventId: event.lastEventId,
        ),
      );
    });
  }

  static OnMessage? _instance;

  static OnMessage get instance {
    if (_instance == null) {
      _instance = OnMessage();
    }
    return _instance!;
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
