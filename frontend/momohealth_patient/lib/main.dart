import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_export.dart';
import 'package:get_storage/get_storage.dart';
import 'presentation/splash/splash_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

    await GetStorage.init();
    await dotenv.load(fileName: ".env");
    runApp(const MyApp());
  });
}

final box = GetStorage();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('fr', 'FR'),
      title: 'MomoHealth',
      initialBinding: InitialBindings(),
      home: const SplashScreen(),
      // initialRoute: AppRoutes.initialRoute,
      // getPages: AppRoutes.pages,
    );
  }
}
