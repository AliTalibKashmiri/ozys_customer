import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_circle.dart';

class ClientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;
    var data = 'CONFIRMED';
    var data2 = 'Hair Cut';
    var data3 = 'Jacobs Barber Studio';
    var data4 = '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6';

    var CONF_data = 'COMPLETED';
    var CONF_data2 = '\$14.00';
    var CONF_data3 = 'Syed Talha Faiz';
    var CONF_data4 = '003283922028111';



    var phone = '+92 303 2525257';
    var email = 'sohailahmad68122@gmail.com';
    var dob = '18 March, 1997';
    var address = 'Islamabad';



    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client Profile",
        height: 70,
        action: Center(child: Row(
          children: [
            Text("Edit",style: TextStyle(fontWeight: FontWeight.w200),),
            SizedBox(width: 10,)
          ],
        )),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(
                children: [
                  CustomCircleAvator(
                    width: 30.0,
                    height: 30.0,
                    colr: Colors.grey.withOpacity(0.4),
                    bgColor: Colors.grey.withOpacity(0.4),
                    data: Icon(Icons.person,color: Colors.white,size: 18,),
                  ),


                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ali Talib',
                        style:
                        heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'He is Special Customer',
                        style:
                        heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 15,),


              Row(
                children: [
                  SizedBox(width: 30,),
                  CustomCircleAvator(
                    width: 30.0,
                    height: 30.0,
                    colr: mainColor,
                    bgColor: mainColor,
                    data: Icon(Icons.calendar_today_outlined,color: Colors.white,size: 16,),
                  ),
                  SizedBox(width: 10,),
                  CustomCircleAvator(
                    width: 30.0,
                    height: 30.0,
                    colr: mainColor,
                    bgColor: Colors.white,
                    data: Icon(Icons.phone,color: mainColor,size: 16,),
                  ),
                  SizedBox(width: 10,),
                  CustomCircleAvator(
                    width: 30.0,
                    height: 30.0,
                    colr: mainColor,
                    bgColor: Colors.white,
                    data: Icon(Icons.email,color: mainColor,size: 16,),
                  ),
                  SizedBox(width: 10,),
                  CustomCircleAvator(
                    width: 30.0,
                    height: 30.0,
                    colr: mainColor,
                    bgColor: Colors.white,
                    data: Icon(Icons.messenger_outline,color: mainColor,size: 16,),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '0',
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Booking',
                          style:
                          heding.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(
                          '0',
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Finished',
                          style:
                          heding.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(
                          '0',
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Cancelled',
                          style:
                          heding.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Total revenues from  client: \$0.00',
                style:
                heding.copyWith(fontSize: 12, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
              Divider(),

              SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    'Appointments',
                    style:
                    heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),

                  Spacer(),
                  Text(
                    'see all',
                    style:
                    heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)

                ],
              ),
              SizedBox(height: 10,),
              Divider(),

              AppoimentTileOne(
                bgClr: Colors.green,
                  data: data, data2: data2, data3: data3, data4: data4),

              SizedBox(height: 30,),
              Row(
                children: [
                  Text(
                    'Payment History',
                    style:
                    heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),

                  Spacer(),
                  Text(
                    'see all',
                    style:
                    heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)

                ],
              ),
              SizedBox(height: 10,),
              Divider(),

              AppoimentTileOne(
                bgClr: mainColor  ,
                  data: CONF_data, data2: CONF_data2, data3: CONF_data3, data4: CONF_data4),
              SizedBox(height: 30,),
              Divider(),
              SizedBox(height: 10,),
              Text(
                'Contact Details',
                style:
                heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 10,),

              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Phone: ',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),),
                    TextSpan(
                        text: phone,
                      style:
                      heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200,color: Colors.black.withOpacity(0.5)),),
                  ])),


              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Email: ',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),),
                    TextSpan(
                        text: email,
                      style:
                      heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200,color: Colors.black.withOpacity(0.5)),),
                  ])),


              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Date Of Birth: ',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),),
                    TextSpan(
                        text: dob,
                      style:
                      heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200,color: Colors.black.withOpacity(0.5)),),
                  ])),


              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Address: ',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),),
                    TextSpan(
                        text: address,
                      style:
                      heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200,color: Colors.black.withOpacity(0.5)),),
                  ])),


              SizedBox(height: 10,),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}

class AppoimentTileOne extends StatelessWidget {
  const AppoimentTileOne({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
    @required this.bgClr,

  }) : super(key: key);

  final String data;
  final String data2;
  final String data3;
  final String data4;

  final Color bgClr;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 100,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8,bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: bgClr),
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
                height: 5,
              ),
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),

              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 4,
              ),

              Container(
                width: Get.width/2,
                child: Text(data4,
                    style: mediumFont.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8D8D8D))),
              )
            ],
          ),
          Spacer(),
          VerticalDivider(),
          SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                'April',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '8',
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '1:00 PM',
                style: mediumFont.copyWith(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
