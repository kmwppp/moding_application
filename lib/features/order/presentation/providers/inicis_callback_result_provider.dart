import 'package:flutter_riverpod/flutter_riverpod.dart';

class InicisCallbackResult extends Notifier<Uri?> {
  @override
  Uri? build() => null;

  void set(Uri uri) => state = uri;

  void clear() => state = null;
}

final inicisCallbackResultProvider =
    NotifierProvider<InicisCallbackResult, Uri?>(InicisCallbackResult.new);
