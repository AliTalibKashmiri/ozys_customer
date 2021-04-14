import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/multi_line_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class NewTimeReservation extends StatelessWidget {
  TextEditingController dateAndTime = TextEditingController();
  TextEditingController reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "New Time Reservation",
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

                Text('Date and Time'),
                CustomTextField(
                  obscuretext: false,
                  txtController: dateAndTime,
                  hintText2: 'Enter Date and Time',
                  textInputType: TextInputType.datetime,
                ),
                Text('Reason'),
                MultiLineTextField(
                  txtController: reason,
                  hintText2: '',
                  textInputType: TextInputType.text,
                ),
                Spacer(),
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
                  height: 150,
                ),
              ],
            )),
      ),
    );
  }
}
