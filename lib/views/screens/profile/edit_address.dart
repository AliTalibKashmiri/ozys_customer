import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class editAddress extends StatelessWidget {
  TextEditingController businessName = TextEditingController();
  TextEditingController streetNo = TextEditingController();
  TextEditingController apartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Address",
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


               

                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    //child: Image.asset("assets/images/imag.png"),

                    backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                  ),
                ),
                SizedBox(
                  height: Get.height/50,
                ),

                Text('Business Name'),
                CustomTextField(
                  obscuretext: false,
                  txtController: businessName,
                  hintText2: 'Straight Technology',
                  textInputType: TextInputType.text,// it will come from database, user can change it
                ),

                Text('Street No'),
                CustomTextField(
                  obscuretext: false,
                  txtController: streetNo,
                  hintText2: '22',
                  textInputType: TextInputType.number,
                ),

                Text('Apartment No (optional)'),
                CustomTextField(
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: '25',
                  textInputType: TextInputType.number,

                ),
                Text('City'),
                CustomTextField(
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Islamabad',
                  textInputType: TextInputType.text,
                ),
                Text('Zip Code'),
                CustomTextField(
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Islamabad',
                  textInputType: TextInputType.text,
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
