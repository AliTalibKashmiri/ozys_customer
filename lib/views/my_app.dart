import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/utils/app_theme.dart';
import 'package:ozys_customer/views/screens/splash_screen.dart';

import 'screens/signup/business_detail.dart';
import 'screens/signup/get_personal_info.dart';
import 'screens/signup/message_page_for_address.dart';
import 'screens/signup/signup_options.dart';
import 'screens/signup/your_address.dart';
import 'screens/signup/your_address2.dart';
import 'screens/signup/your_location.dart';
import 'screens/welcome.dart';

class MyApp extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme: theme.themeData,
    home: SplashScreen(),

      getPages: [
        GetPage(name: "/welcome", page: () => Welcome()),
        GetPage(name: "/signupOption", page: () => SignUpOption()),
        GetPage(name: "/GetPersonalInfo", page: () => GetPersonalInfo()),
        GetPage(name: "/BusinessDetails", page: () => BusinessDetails()),
        GetPage(name: "/MessagePage", page: () => MessagePage()),
        GetPage(name: "/YourAddress", page: () => YourAddress()),
        GetPage(name: "/YourAddress2", page: () => YourAddress2()),
        GetPage(name: "/YourLocation", page: () => YourLocation()),
      ],
    );
  }
}
