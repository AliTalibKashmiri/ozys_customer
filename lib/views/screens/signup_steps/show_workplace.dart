import 'package:dotted_border/dotted_border.dart';
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

class ShowWorkPlace extends StatelessWidget {



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
      body: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Show Your Workplace',
                style:
                heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '3 Photo will be displayed on your profile\n on the free OZYS Client.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 30,
              ),



              rectBorderWidget,

              SizedBox(
                height: 20,
              ),

              Text(
                'It is optional, but highly recommended.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: Get.height/3,
              ),

              CustomButton(
                lable: "Continue",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.offNamed('/KindOfBusiness');
                },
              ),

              SizedBox(
                height: 10,
              ),






            ],
          )),
    );
  }

  Widget get rectBorderWidget {
    return DottedBorder(
      color: Colors.grey,
      dashPattern: [8, 6],
      strokeWidth: 1,
      child: Container(
        height: Get.height/5,
        width: Get.width,
        child: Center(child: Icon(Icons.add_circle,size: 30,color: Colors.grey,)),
      ),
    );
  }

}
