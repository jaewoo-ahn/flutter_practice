import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Aqua WorkOut App",
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blue,
          hintColor: Colors.white,
          textTheme:
              const TextTheme(titleMedium: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(milliseconds: 230),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
