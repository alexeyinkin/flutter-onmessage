import 'onmessage_abstract.dart';

class OnMessage extends OnMessageAbstract {
  static OnMessage? _instance;

  static OnMessage get instance {
    if (_instance == null) {
      _instance = OnMessage();
    }
    return _instance!;
  }
}
