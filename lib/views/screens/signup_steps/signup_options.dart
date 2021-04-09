import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class SignUpOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Setup your business",
        height: 70,
        action: SizedBox(),


      ),
      body: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),


              SizedBox(
                height: 20,
              ),
              Text(
                'Start Your Setup',
                style:
                heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'No Credit card. No Commitment.\nIt takes only 2 minutes',
                textAlign: TextAlign.center,
              ),



              SizedBox(
                height: 100,
              ),

              CustomButton(
                lable: "Sign in with email",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.offNamed('/GetPersonalInfo');
                },

              ),
              SizedBox(
                height: 40,
              ),

              Text(
                'OR',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 10,
              ),

              SocialButton(
                lable: "CONTINUE WITH FACEBOOK",
                iconPath: 'assets/images/facebook.png',

              ),
              SizedBox(
                height: 10,
              ),
              SocialButton(
                lable: "CONTINUE WITH GOOGLE",
                iconPath: 'assets/images/google.png',

              ),

            ],
          )),
    );
  }
}
