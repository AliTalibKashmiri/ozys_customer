import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/edit_clint_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';


class AccountAndSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Account And Settings",
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

                SizedBox(height: Get.height/20,),
                InkWell(
                  onTap: () {

                    // Get.offNamed('/AccountAndSettings');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: Get.height / 50),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                InkWell(
                  onTap: () {

                    // Get.offNamed('/AccountAndSettings');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: Get.height / 50),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                InkWell(
                  onTap: () {

                     Get.offNamed('/Settings');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: Get.height / 50),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),

              ],
            )),
      ),
    );
  }
}