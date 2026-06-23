import 'dart:io';

import 'package:flutter/material.dart';

Future<dynamic> navigateToWebviewByPlatform(BuildContext context, Widget page) async {
  return await Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => page,
      fullscreenDialog: Platform.isIOS,
      settings: const RouteSettings(name: 'tosspayments_payment_window'),
    ),
  );
}
