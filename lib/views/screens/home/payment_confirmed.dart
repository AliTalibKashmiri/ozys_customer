import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_circle.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';

class PaymentConfirmedPage extends StatelessWidget {

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;

    var data2 = 'Hair Cut';
    var data3 = '\$80.00';



    String from = "8:00am";
    String to = "5:00pm";



    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Confirmed",
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
              Center(
                child: Text(
                  'ID:429348239',
                  style:
                  heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10,),

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
              SizedBox(height: 25,),

              Text(
                'Services',
                style:
                heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),


              Divider(),

              AppoimentTileOne(
                bgClr: Colors.green,
                data2: data2, data3: data3, from: from,
              to: to,),

              SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left:5.0),
          child: CustomCircleAvator(
            width: 8.toDouble(),
            height: 8.toDouble(),
            bgColor:Colors.grey.withOpacity(0.6),
            data: SizedBox(),
            colr: Colors.grey.withOpacity(0.6),
          )
        ),
              SizedBox(height: 5,),
              Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: CustomCircleAvator(
                    width: 8.toDouble(),
                    height: 8.toDouble(),
                    bgColor:Colors.grey.withOpacity(0.6),
                    data: SizedBox(),
                    colr: Colors.grey.withOpacity(0.6),
                  )
              ),
              SizedBox(height: 5,),
              Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: CustomCircleAvator(
                    width: 8.toDouble(),
                    height: 8.toDouble(),
                    bgColor:Colors.grey.withOpacity(0.6),
                    data: SizedBox(),
                    colr: Colors.grey.withOpacity(0.6),
                  )
              ),
              SizedBox(height: 5,),
              AppoimentTileOne(
                bgClr: Colors.green,
                data2: data2, data3: data3, from: from,
                to: to,),
              SizedBox(height: 30,),
              Divider(),
              SizedBox(height: 10,),
              Text(
                'Notes and Message',
                style:
                heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
        Text(
          'Internal Note (viewable for Staff only)',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),

      SizedBox(
        height: 0,
      ),

      CustomTextField(
        obscuretext: false,
        txtController: note,
        hintText2: 'Her is special client',
      ),

              SizedBox(
                height: 10,
              ),
              Text(
                'Notify to client',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 0,
              ),

              CustomTextField(
                obscuretext: false,
                txtController: note,
                hintText2: 'Yes Brother Whatsuppp!!',
              ),



              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 10,),
              Text(
                'Calendar Review',
                style:
                heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10,),

              Center(
                child: Container(
                  width: Get.width/1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffFFE8E8)),
                      color: Color(0xffFFE8E8)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ali talib',
                              style:
                              heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '9:00 PM - 9:30 PM',
                              style:
                              heding.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),

                        Text(
                          'Highlights, Haircut, Coloring',
                          style:
                          heding.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '\$30.00',
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Paid',
                          style:
                          heding.copyWith(fontSize: 12, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 10,),

              CustomButton(
                lable: "Add to Google Calendar",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.offNamed('/CalendarAppoinmentPage');
                },
              ),

              Divider(),
              SizedBox(height: 10,),
              CustomButton(
                lable: "Checkout",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  // Get.offNamed('/GetPersonalInfo');
                },
              ),
              SizedBox(height: 10,),

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
    @required this.from,
    @required this.to,

  }) : super(key: key);

  final String data;
  final String data2;
  final String data3;
  final String data4;


  final String from;
  final String to;

  final Color bgClr;



  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    return Container(
      height: 90,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 0, right: 12, top: 0,bottom: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Container(
            height: Get.height,
            width: 15,

            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                border: Border.all(color: Color(0xffE2E0E0))),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data2,
                    style: mediumFont.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(width: 100,),
                  Text(
                    data3,
                    style: mediumFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        from,
                        style:
                        heding.copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward,size: 16,),
                      SizedBox(
                        width:10,
                      ),
                      Text(
                        to,
                        style:
                        heding.copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),



                ],
              ),



            ],
          ),
          Spacer(),
          VerticalDivider(),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'April',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height:4,
              ),
              Text(
                '8',
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 4,
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
