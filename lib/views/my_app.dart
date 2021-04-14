import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/utils/app_theme.dart';
import 'package:ozys_customer/views/screens/splash_screen.dart';

import 'screens/bottom_nav_bar.dart';
import 'screens/home/calendar_appoinments.dart';
import 'screens/home/client_profile.dart';
import 'screens/notification.dart';
import 'screens/signup_steps/business_detail.dart';
import 'screens/signup_steps/business_hours.dart';
import 'screens/signup_steps/get_personal_info.dart';
import 'screens/signup_steps/kind_of_business.dart';
import 'screens/signup_steps/message_page_for_address.dart';
import 'screens/signup_steps/show_workplace.dart';
import 'screens/signup_steps/signup_options.dart';
import 'screens/signup_steps/your_address.dart';
import 'screens/signup_steps/your_address2.dart';
import 'screens/signup_steps/your_location.dart';
import 'screens/signup_steps/your_services_page.dart';
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
        GetPage(name: "/BusinessHours", page: () => BusinessHours()),
        GetPage(name: "/ShowWorkPlace", page: () => ShowWorkPlace()),
        GetPage(name: "/KindOfBusiness", page: () => KindOfBusinessPage()),
        GetPage(name: "/YourServicesPage", page: () => YourServicesPage()),
        GetPage(name: "/BottomNavBar", page: () => BottomNavBar()),
        GetPage(name: "/CalendarAppoinmentPage", page: () => CalendarAppoinmentPage()),
        GetPage(name: "/NotificationPage", page: () => NotificationPage()),
      ],
    );
  }
}
