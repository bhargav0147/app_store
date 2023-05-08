import 'package:app_store/appstore/provider/provider.dart';
import 'package:app_store/appstore/view/mainScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppProvider(),)
        ],
        builder: (context, child) {
          return CupertinoApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (p0) => MainScreen()
            },
          );
        },
      );
    },
  ));
}