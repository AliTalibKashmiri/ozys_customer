import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';

class OnBording extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(

      body: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/onboarding.png',
                height: Get.height/3,
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                'Smart Scheduling And POS \nFor Appointment Based \nBuisness',
                style:
                    heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'This appointment booking software allows salespeople to customize their availability, create booking pages, and send them to prospects and customers.',
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 6,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),

              CustomButton(
                lable: "Sign up",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.offNamed('/welcome');
                },

              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                lable: "Sign in",
                borderColor: Colors.grey.withOpacity(0.2),
                color: Colors.white,
                lableColor: Colors.grey,
                radius: 10,
                onPress: (){},
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(

                child: Text(
                  'No, thanks. I want to book an appointment.',
                  style: TextStyle(color: mainColor),
                  textAlign: TextAlign.center,
                ),
              ),

            ],
          )),
    );
  }
}
