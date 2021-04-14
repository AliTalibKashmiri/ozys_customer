import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/new_appointment_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class NewAppointment extends StatelessWidget {
  TextEditingController name = TextEditingController();
TextEditingController internalNote = TextEditingController();
TextEditingController notifyToCient = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    NewApointmentController controller = Get.put(NewApointmentController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "New Appointment",
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Walk-In Client',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Get.height / 60,
                          fontWeight: FontWeight.w400),
                    ),
                    Obx(
                          () => Switch(
                          activeColor: Colors.blue,
                          value: controller.walkInClient.value,
                          onChanged: (val) => controller.toggle()),
                    ),
                  ],
                ),
Divider(color: Colors.grey,),
                Text(
                  'Client Info',
                  style:
                  TextStyle(color: Colors.black, fontSize: Get.height / 50),
                ),
                SizedBox(height: Get.height/60,),
                Text('Full Name'),
                CustomTextField(
                  obscuretext: false,
                  txtController: name,
                  hintText2: 'Enter Full Name',
                ),

                InkWell(
                  onTap: () {

                     Get.offNamed('/SelectService');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Service',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: Get.height / 60),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start',
                      style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 60),
                    ),
                    Text(
                      'today; 11:00pm', // this is hardcorde value, it will come from dataBase
                      style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 60),
                    ),
                  ],),
                Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'End',
                      style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 60),
                    ),
                    Text(
                      'today; 12:00pm', // this is hardcorde value, it will come from dataBase
                      style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 60),
                    ),
                  ],),
                Divider(color: Colors.grey,),
                Text(
                  'Notes and Messages',
                  style:
                  TextStyle(color: Colors.black, fontSize: Get.height / 50),
                ),
                SizedBox(height: Get.height/60,),
                Text('Internal Note()Viewable for staff only'),
                CustomTextField(
                  obscuretext: false,
                  txtController: internalNote,
                  hintText2: 'Type internal note',
                ),
                Text('Notify To Client'),
                CustomTextField(
                  obscuretext: false,
                  txtController: internalNote,
                  hintText2: 'Type notifications',
                ),
                Divider(color: Colors.grey,),
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
