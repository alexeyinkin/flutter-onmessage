A stream wrapping JavaScript's `window.onmessage` that is safe to import even on platforms
other than web.

## Purpose ##

In web apps, you can listen to events from other frames like this:

```dart
import 'dart:html' as html;

void main() {
  html.window.onMessage.listen((html.MessageEvent event) {
    // Handle.
  });
  // ...
}
```

However, `dart:html` is not available on platforms other than web. If you use it,
your app cannot be built there.

The Dart team recommends conditional import of files that use `dart:html`
which gets your app complex. And even then you must silence a linter warning of importing
`dart:html` in a non-web-only package.

This package provides a wrapper for that stream of messages that can be used on all platforms.
On platforms other than web, the stream would just produce no events.

## Usage ##

```dart
import 'package:onmessage/onmessage.dart';

void main() {
  OnMessage.instance.stream.listen((MessageEvent event) {
    // Handle.
  });
  // ...
}
```

`MessageEvent` class from this package is an independent class with fields copied from the original
`html.MessageEvent`. It is provided so that you can have an API independent from web.
