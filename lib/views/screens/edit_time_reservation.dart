import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class EditTimeReservation extends StatelessWidget {
  TextEditingController dateAndTime = TextEditingController();
  TextEditingController reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Edit Time Reservation",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(child: Text('ID:429348239')),
                Text('Date and Time'),
                CustomTextField(
                  obscuretext: false,
                  txtController: dateAndTime,
                  hintText2: 'Enter Date and Time',
                  textInputType: TextInputType.datetime,
                ),
                Text('Reason'),
                CustomTextField(
                  obscuretext: false,
                  txtController: reason,
                  hintText2: '',
                  textInputType: TextInputType.text,
                ),

                SizedBox(height: Get.height/5,),
                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.offNamed('/BusinessDetails');
                  },
                ),
                SizedBox(
                  height: Get.height/50,
                ),
                CustomButton(
                  lable: "Cancel Reservation",
                  borderColor: Colors.grey.withOpacity(0.2),
                  color: Colors.white,
                  lableColor: Colors.grey,
                  radius: 10,
                  onPress: (){},
                ),
              ],
            )),
      ),
    );
  }
}