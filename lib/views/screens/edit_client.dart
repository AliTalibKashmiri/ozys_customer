import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/edit_clint_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/multi_line_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class EditClient extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController streetAddress = TextEditingController();
  TextEditingController appartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController instructions = TextEditingController();
  String comment = 'He is special character';
  String clientName = 'Ali talib';

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Edit Client",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'No more booking from this client',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Get.height / 60,
                          fontWeight: FontWeight.w400),
                    ),
                    Obx(
                      () => Switch(
                          activeColor: Colors.blue,
                          value: controller.noMoreBooking.value,
                          onChanged: (val) => controller.toggle()),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 15,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      //child: Image.asset("assets/images/imag.png"),

                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$clientName',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '$comment',
                          style: TextStyle(
                              color: Colors.grey, fontSize: Get.height / 60),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Text(
                  'Client Info',
                  style:
                      TextStyle(color: Colors.black, fontSize: Get.height / 50),
                ),
                SizedBox(
                  height: Get.height / 80,
                ),
                Text('Full Name'),
                CustomTextField(
                  obscuretext: false,
                  txtController: name,
                  hintText2: 'Enter Full Name',
                ),
                Text('Email Address'),
                CustomTextField(
                  obscuretext: false,
                  txtController: emailAddress,
                  hintText2: 'Enter Email Address',
                  textInputType: TextInputType.emailAddress,
                ),
                Text('Phone No'),
                CustomTextField(
                  obscuretext: false,
                  txtController: phoneNo,
                  hintText2: '\$25',
                  textInputType: TextInputType.number,
                ),
                Text('DOB(optional)'),
                CustomTextField(
                  obscuretext: false,
                  txtController: dateOfBirth,
                  hintText2: 'Enter DOB',
                  textInputType: TextInputType.datetime,
                ),
                Text(
                  'Address',
                  style:
                      TextStyle(color: Colors.black, fontSize: Get.height / 50),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Text('Street address and Number'),
                CustomTextField(
                  obscuretext: false,
                  txtController: streetAddress,
                  hintText2: 'Enter street address amd number',
                  textInputType: TextInputType.text,
                ),
                Text('Apartment(optional)'),
                CustomTextField(
                  obscuretext: false,
                  txtController: appartmentNo,
                  hintText2: 'Enter Apartment',
                  textInputType: TextInputType.number,
                ),
                Text('City'),
                CustomTextField(
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Enter City',
                  textInputType: TextInputType.text,
                ),
                Text('Zip Code'),
                CustomTextField(
                  obscuretext: false,
                  txtController: zipCode,
                  hintText2: 'Enter Zip code',
                  textInputType: TextInputType.number,
                ),
                Text(
                  'Instructions',
                  style:
                      TextStyle(color: Colors.black, fontSize: Get.height / 50),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Text('Note'),
                MultiLineTextField(
                  txtController: instructions,
                  hintText2: '',
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: Get.height / 20,
                ),
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
                  height: Get.height / 50,
                ),
                CustomButton(
                  lable: "Delete Service",
                  borderColor: Colors.grey.withOpacity(0.2),
                  color: Colors.white,
                  lableColor: Colors.grey,
                  radius: 10,
                  onPress: () {},
                ),
              ],
            )),
      ),
    );
  }
}
