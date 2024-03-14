import 'package:expense/common/routes/pages.dart';
import 'package:expense/common/utils/logging/logger.dart';
import 'package:expense/common/utils/theme/theme.dart';
import 'package:expense/global.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Expense',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: EAppTheme.darkTheme,
      theme: EAppTheme.lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
      navigatorObservers: [AppPages.observer],
      enableLog: true,
      logWriterCallback: Logger.write,
    );
  }
}
