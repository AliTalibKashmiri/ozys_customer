import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/screens/home/client.dart';
import 'package:ozys_customer/views/screens/home/client_appointments.dart';
import 'package:ozys_customer/views/screens/home/client_payment_history.dart';
import 'package:ozys_customer/views/screens/home/client_profile.dart';
import 'package:ozys_customer/views/screens/home/payment_confirmed.dart';


class BottomNavController extends GetxController {
  Widget currentPage;
  int currentIndex = 1;

  void updatePage(index) {
    switch (index) {


      case 0:
        currentPage = PaymentConfirmedPage();
        currentIndex = index;
        update();
        break;
      case 1:
        currentPage = ClientPage();
        currentIndex = index;
        update();
        break;
      case 2:
        currentPage = ClientPaymentHistoryPage();
        currentIndex = index;
        update();
        break;
      case 3:
        currentPage = clientAppointmentPage();
        currentIndex = index;
        update();
        break;
      case 4:
        currentPage = ClientProfile();
        currentIndex = index;
        update();
        break;

    }
  }
}
