
import 'package:fahras/server.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'Splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get/app_get.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/translations/',
  );
  runApp((
      GetMaterialApp(
          home:myHome(),
        localizationsDelegates: translator.delegates,
        locale: translator.locale,
        supportedLocales: translator.locals(),
  )
  ));
}

class myHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(Appget());

    return splash_screen();
  }
}

