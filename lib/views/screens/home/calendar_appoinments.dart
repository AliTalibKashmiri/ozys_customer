import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/main.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_circle.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';

import '../notification.dart';

class CalendarAppoinmentPage extends StatelessWidget {

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;


    var data = "CONFIRMED";
    var data2 = "Not Confirmed";
    var name = "Ali Talib";
    var type = "Highlights, Haircut, Coloring";
    var price = "\$30.00";


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: " Appointments",
        height: 70,
        action: Center(child: Row(
          children: [
            Icon(Icons.sticky_note_2,color: Colors.grey,),
            SizedBox(width: 10,),
            GestureDetector(
                onTap: (){
                  Get.to(NotificationPage());
                },
                child: Icon(Icons.notifications_active,color: Colors.grey,)),
            SizedBox(width: 10,)
          ],
        )),
        leading: Icon(
          Icons.settings,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                  onDateChanged: (value) {}),



              Row(
                  children: <Widget>[
                    Text("09 AM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),


              AppoimentTile(
                data: data,
                name: name,
                type: type,
                price: price,
                clr: Colors.green,
              ),

              SizedBox(height: 10,),

              Row(
                  children: <Widget>[
                    Text("10 AM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),


              AppoimentTile(
                data: data2,
                name: name,
                type: type,
                price: price,
                clr: mainColor,
              ),

              SizedBox(height: 10,),

              Row(
                  children: <Widget>[
                    Text("11 AM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),


              AppoimentTile(
                data: data,
                name: name,
                type: type,
                price: price,
                clr: Colors.green,
              ),

              SizedBox(height: 10,),

              Row(
                  children: <Widget>[
                    Text("12 AM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),


              AppoimentTile(
                data: data,
                name: name,
                type: type,
                price: price,
                clr: Colors.green,
              ),

              SizedBox(height: 10,),

              Row(
                  children: <Widget>[
                    Text("01 PM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),


              AppoimentTile(
                data: data2,
                name: name,
                type: type,
                price: price,
                clr: mainColor,
              ),

              SizedBox(height: 10,),

              Row(
                  children: <Widget>[
                    Text("02 PM"),
                    SizedBox(width: 5,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),

              
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}

class AppoimentTile extends StatelessWidget {
  const AppoimentTile({
    Key key,
    @required this.name,
    @required this.type,
    @required this.price,
    @required this.data,
    @required this.clr,
  }) : super(key: key);

  final String name;
  final String type;
  final String price;
  final String data;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: clr),
          child: Center(
            child: Text(
              data,
              style: mediumFont.copyWith(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        VerticalDivider(),

        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: mediumFont.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),

            Text(
              type,
              style: mediumFont.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff272833)),
            ),
            Text(price,
                maxLines: 2,
                style: mediumFont.copyWith(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8D8D))),
            SizedBox(
              height: 8,
            ),
          ],
        ),

      ],
    );
  }
}

