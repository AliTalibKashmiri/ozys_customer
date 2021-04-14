import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controller/edit_clint_controller.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';


class MainProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Profile",
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
                  children: [
                    Stack(
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
                          left: 40,
                          child: Icon(
                            Icons.camera_alt,
                            size: Get.height / 35,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Get.width / 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ali talib',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: Get.height / 50),
                        ), // name, it will come from database
                        Text(
                          'Business Owner',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: Get.height / 60),
                        ), // its designation, it will come from database
                      ],
                    )
                  ],
                ),
SizedBox(height: Get.height/20,),
                InkWell(
                  onTap: () {

                      Get.offNamed('/AccountAndSettings');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Account Setting',
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
                              Icons.save,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Saved',
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
                              Icons.star,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Reviews and Ratings',
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
                              Icons.payment,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Payment',
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
                              Icons.feedback,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Feedback and Support',
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
                              Icons.account_box_outlined,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'About OZYS',
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
                              Icons.logout,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'Logout',
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
