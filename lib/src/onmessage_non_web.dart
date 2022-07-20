import 'onmessage_abstract.dart';

/// A non-web implementation that does nothing.
class OnMessage extends OnMessageAbstract {
  OnMessage._();

  /// The single instance.
  static final instance = OnMessage._();
}
