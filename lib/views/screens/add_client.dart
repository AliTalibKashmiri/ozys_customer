import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/add_client_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class AddClient extends StatelessWidget {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController streetAddress = TextEditingController();
  TextEditingController appartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController instructions = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Add Client",
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


              child:
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            //child: Image.asset("assets/images/imag.png"),

                            backgroundImage:
                            NetworkImage('https://via.placeholder.com/150'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 45,
                            child: Icon(
                              Icons.camera_alt,
                              size: Get.height / 35,
                              color:Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height/50,
                    ),
                    Text('Client Info', style: TextStyle(color: Colors.black, fontSize: Get.height/50),),
                    SizedBox(
                      height: Get.height/80,
                    ),
                    Text('Full Name'),
                    CustomTextField(
                      obscuretext: false,
                      txtController: name,
                      hintText2: 'Enter Full Name'
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
                      obscuretext: true,
                      txtController: dateOfBirth,
                      hintText2: 'Enter DOB',
                      textInputType: TextInputType.datetime,
                    ),
                    Text('Address', style: TextStyle(color: Colors.black, fontSize: Get.height/50),),
                    SizedBox(
                      height: Get.height/50,
                    ),
                    Text('Street address and Number'),
                    CustomTextField(
                      obscuretext: true,
                      txtController: streetAddress,
                      hintText2: 'Enter street address amd number',
                      textInputType: TextInputType.text,
                    ),
                    Text('Apartment(optional)'),
                    CustomTextField(
                      obscuretext: true,
                      txtController: appartmentNo,
                      hintText2: 'Enter Apartment',
                      textInputType: TextInputType.number,
                    ),
                    Text('City'),
                    CustomTextField(
                      obscuretext: true,
                      txtController: city,
                      hintText2: 'Enter City',
                      textInputType: TextInputType.text,
                    ),
                    Text('Zip Code'),
                    CustomTextField(
                      obscuretext: true,
                      txtController:zipCode,
                      hintText2: 'Enter Zip code',
                      textInputType: TextInputType.number,
                    ),
                    Text('Instructions', style: TextStyle(color: Colors.black, fontSize: Get.height/50),),
                    SizedBox(
                      height: Get.height/50,
                    ),
                    Text('Note'),
                    CustomTextField(
                      obscuretext: true,
                      txtController: instructions,
                      hintText2: '',
                      textInputType: TextInputType.number,
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
                  ],
                )
    )
    ));





  }
}
