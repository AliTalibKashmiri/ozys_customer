import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/edit_clint_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';


class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Add",
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
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'New Appointment',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: Get.height / 50),
                            ),
                          ],
                        ),
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
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_sharp,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'New Time Reservation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: Get.height / 50),
                            ),
                          ],
                        ),
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
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.list_alt,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'New Sales',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: Get.height / 50),
                            ),
                          ],
                        ),
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
