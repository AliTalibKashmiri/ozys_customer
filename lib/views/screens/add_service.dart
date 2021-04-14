import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class AddService extends StatelessWidget {
  TextEditingController nameOfService = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController priceType = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Services",
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
                    'Services Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: Get.height/50),
                  ),
                ),
                SizedBox(
                  height: Get.height/40,
                ),
                Center(
                  child: Text(
                    'You can add more details of services later.',
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: Get.height/25,
                ),

                Text('Name of Service'),
                CustomTextField(
                  obscuretext: false,
                  txtController: nameOfService,
                  hintText2: 'Enter Name of Service',
                ),

                Text('Duration'),
                CustomTextField(
                  obscuretext: false,
                  txtController: duration,
                  hintText2: 'Duration',
                  textInputType: TextInputType.number,
                ),

                Text('Price'),
                CustomTextField(
                  obscuretext: false,
                  txtController: price,
                  hintText2: '\$25',
                  textInputType: TextInputType.number,

                ),
                Text('Price type'),
                CustomTextField(
                  obscuretext: true,
                  txtController: priceType,
                  hintText2: 'Fixed',
                  textInputType: TextInputType.number,
                ),

                SizedBox(
                  height: Get.height/20,
                ),
                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.offNamed('/BusinessDetails');
                  },

                ),




              ],
            )),
      ),
    );
  }
}
