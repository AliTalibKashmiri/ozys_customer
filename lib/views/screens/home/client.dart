import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/custom_circle.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client",
        height: 70,
        action: Row(
          children: [
            Icon(Icons.add_circle),
            SizedBox(width: 10,)
          ],
        ),
        leading: Icon(
          Icons.settings,
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [


            Row(
              children: [
                CustomCircleAvator(
                  width: 30.0,
                  height: 30.0,
                  colr: Colors.grey,
                  data: Icon(Icons.person,color: Colors.grey,size: 18,),
                ),

                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sohail Ahmad',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '+92 303 2525257',
                      style:
                      heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 5,),
            Divider(),


          ],
        ),
      ),
    );
  }
}
