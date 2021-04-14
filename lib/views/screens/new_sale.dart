import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class NewSale extends StatelessWidget {
  TextEditingController tip = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "New Sale     ",
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
                          'Ali Talib', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '03400888104', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.grey, fontSize: Get.height / 60),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height / 60,
                ),
                Divider(),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          'Ali Talib', // this is the name, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Highlights, Haircut, Coloring', // this is the name of services, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '9:30pm to 11:00pm', // this is the time , it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amount', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          '\$40', // this is the name, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),

                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          'Ali Talib', // this is the name, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Highlights, Haircut, Coloring', // this is the name of services, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '9:30pm to 11:00pm', // this is the time , it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amount', // its simple text, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: Get.height / 80,
                        ),
                        Text(
                          '\$40', // this is the name, it will come from database
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Get.height / 50,
                              fontWeight: FontWeight.w500),
                        ),

                      ],
                    )
                  ],
                ),
                Divider(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Sub Total: \$480', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height/80,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Total: \$500', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height/80,),
                Text('Tip'),
                CustomTextField(
                  obscuretext: false,
                  txtController: tip,
                  hintText2: 'Enter Tip Amount',
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Cash',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                  Text('\$700',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w600),
                  ),
                ],),
                SizedBox(height: Get.height/15,),
                CustomButton(
                  lable: "Charge",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.offNamed('/BusinessDetails');
                  },
                ),
              ],
            )),
      ),
    );
  }
}
