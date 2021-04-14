import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/utils/app_theme.dart';
import 'package:ozys_customer/views/screens/add_Page.dart';
import 'package:ozys_customer/views/screens/calendar_options.dart';
import 'package:ozys_customer/views/screens/new_appointment.dart';
import 'package:ozys_customer/views/screens/profile/account_and_settings.dart';
import 'package:ozys_customer/views/screens/profile/settings.dart';
import 'package:ozys_customer/views/screens/select_service.dart';
import 'package:ozys_customer/views/screens/transaction_details.dart';

import 'screens/client_filters.dart';
import 'screens/profile/edit_address.dart';

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
    home: TransactionDetails(),

      getPages: [
        GetPage(name: "/welcome", page: () => Welcome()),
        GetPage(name: "/signupOption", page: () => SignUpOption()),
        GetPage(name: "/GetPersonalInfo", page: () => GetPersonalInfo()),
        GetPage(name: "/BusinessDetails", page: () => BusinessDetails()),
        GetPage(name: "/MessagePage", page: () => MessagePage()),
        GetPage(name: "/YourAddress", page: () => YourAddress()),
        GetPage(name: "/YourAddress2", page: () => YourAddress2()),
        GetPage(name: "/YourLocation", page: () => YourLocation()),
        GetPage(name: "/AccountAndSettings", page: () => AccountAndSettings()),
        GetPage(name: "/Settings", page: () => Settings()),
        GetPage(name: "/SelectService", page: () => SelectService()),

      ],
    );
  }
}
