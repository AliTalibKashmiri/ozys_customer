import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';

class YourServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Services",
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
          children: [
            Text(
              'What Services Can Client Book With You?',
              style:
              heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You can change services and categories later.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Haircut',
                  style: TextStyle(fontSize: 14,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\$30.00',
                  style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Color',
                  style: TextStyle(fontSize: 14,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\$30.00',
                  style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Highlights',
                  style: TextStyle(fontSize: 14,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\$30.00',
                  style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.add_circle,color: mainColor,size: 12,),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Add another service',
                  style: TextStyle(fontSize: 12,color: mainColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Spacer(),


            CustomButton(
              lable: "Start Using OZYS",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: () {
                Get.offNamed('/BottomNavBar');
              },
            ),
            SizedBox(
              height: 10,
            ),


          ],
        ),
      ),
    );
  }
}
