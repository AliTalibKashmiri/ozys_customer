import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class YourAddress2 extends StatelessWidget {
  TextEditingController street = TextEditingController();
  TextEditingController appartment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your address",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),




      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'where can you client find you?',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Text('Street address and number'),
                CustomTextField(
                  obscuretext: false,
                  txtController: street,
                  hintText2: 'Enter Street address and number',
                ),

                Text('Apartment (optional)'),
                CustomTextField(
                  obscuretext: false,
                  txtController: appartment,
                  hintText2: 'Enter Apartment',
                ),

                Text('City'),
                CustomTextField(
                  obscuretext: false,
                  txtController: appartment,
                  hintText2: 'Enter city',
                ),
                Text('Zip Code'),
                CustomTextField(
                  obscuretext: false,
                  txtController: appartment,
                  hintText2: 'Enter zip code',
                ),



                SizedBox(
                  height: Get.height/5,
                ),


                CustomButton(
                  lable: "Continue",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.offNamed('/YourLocation');
                  },
                ),
                SizedBox(
                  height: 10,
                ),




              ],
            )),
      ),
    );
  }
}
