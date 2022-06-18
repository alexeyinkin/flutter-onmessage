export 'src/message_event.dart';

export 'src/onmessage_non_web.dart'
    if (dart.library.html) 'src/onmessage_web.dart';
