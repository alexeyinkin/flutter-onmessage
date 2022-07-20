import 'dart:async';
import 'dart:html' as html;

import 'message_event.dart';
import 'onmessage_abstract.dart';

/// A web implementation that does the job.
class OnMessage extends OnMessageAbstract {
  StreamSubscription? _streamSubscription;

  OnMessage._() {
    _streamSubscription = html.window.onMessage.listen((event) {
      addMessage(
        MessageEvent(
          bubbles: event.bubbles ?? false,
          cancellable: event.cancelable ?? false,
          data: event.data,
          origin: event.origin,
          lastEventId: event.lastEventId,
          source: event.source,
          ports: event.ports,
        ),
      );
    });
  }

  /// The single instance.
  static final instance = OnMessage._();

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
