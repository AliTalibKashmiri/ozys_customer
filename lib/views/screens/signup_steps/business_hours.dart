import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:ozys_customer/controllers/business_hour_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class BusinessHours extends StatelessWidget {

  String from = "8:00am";
  String to = "5:00pm";
  bool monday = false;


  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    mondayController controller = Get.put(mondayController());

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Business Hours",
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
                  child: Text(
                    'Your Opening Hours',
                    style:
                    heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'When can client book with you?',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                //monday
                Text(
                  'Monday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                   Obx(() => Switch(
                     activeColor: Colors.blue,
                       value: controller.monday.value,
                       onChanged: (val) => controller.toggle()))

                  ],
                ),

                Divider(),


                //tuesday
                Text(
                  'Tuesday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                   Obx(() => Switch(
                     activeColor: Colors.blue,
                       value: controller.tuesday.value,
                       onChanged: (val) {

                       controller.toggle1();
                       Get.defaultDialog(
                         title: "set time"
                       );

                       }))

                  ],
                ),


                Divider(),


                //wednesday
                Text(
                  'Wednesday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Obx(() => Switch(
                        activeColor: Colors.blue,
                        value: controller.wedn.value,
                        onChanged: (val) => controller.toggle2()))

                  ],
                ),



                Divider(),
                //thusday
                Text(
                  'Thursday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Obx(() => Switch(
                        activeColor: Colors.blue,
                        value: controller.thus.value,
                        onChanged: (val) => controller.toggle3()))

                  ],
                ),



                Divider(),
                //friday
                Text(
                  'Friday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Obx(() => Switch(
                        activeColor: Colors.blue,
                        value: controller.fri.value,
                        onChanged: (val) => controller.toggle4()))

                  ],
                ),


                Divider(),
                //sat
                Text(
                  'Saturday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Obx(() => Switch(
                        activeColor: Colors.blue,
                        value: controller.sat.value,
                        onChanged: (val) => controller.toggle5()))

                  ],
                ),

                Divider(),
                //sun
                Text(
                  'Sunday',
                  style:
                  heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          from,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward,size: 16,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          to,
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Obx(() => Switch(
                        activeColor: Colors.blue,
                        value: controller.sun.value,
                        onChanged: (val) => controller.toggle6()))

                  ],
                ),

                Divider(),


                SizedBox(
                  height: 20,
                ),


                CustomButton(
                  lable: "Continue",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.offNamed('/ShowWorkPlace');
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
