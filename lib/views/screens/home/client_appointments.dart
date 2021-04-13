import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';

class clientAppointmentPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    var data = 'Pending Bill : \$100.00';
    var data2 = 'Hair Cut';
    var data3 = 'Jacobs Barber Studio';
    var data4 = 'Here will be special instruction';

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client Appointments",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                'Request for Appointments',
                style: mediumFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RequestedAppoimentTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 16,
              ),
              Text(
                'Upcoming Appointments',
                style: mediumFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              UpComingAppoimentTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 16,
              ),
              Text(
                'Cancel Appointments',
                style: mediumFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CancelAppoimentTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 16,
              ),
              Text(
                'Completed Appointments',
                style: mediumFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CompletedAppoimentTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height:10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RequestedAppoimentTile extends StatelessWidget {
  const RequestedAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 110,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
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
                height: 8,
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
              Text(data4,
                  style: mediumFont.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8D8D8D))),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor),
                    child: Center(
                      child: Text(
                        'Approve',
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        'Reject',
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(
            flex: 4,
          ),
          VerticalDivider(),
          Spacer(),
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
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class UpComingAppoimentTile extends StatelessWidget {
  const UpComingAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 110,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
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
                height: 8,
              ),
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 8,
              ),
              Text('3030 Boulevard Curé-Labelle office',
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
          Spacer(
            flex: 4,
          ),
          VerticalDivider(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Aprial',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 4,
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
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CancelAppoimentTile extends StatelessWidget {
  const CancelAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 112,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.redAccent),
                child: Center(
                  child: Text(
                    "Bill : \$100.00",
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 8,
              ),
              Text('3030 Boulevard Curé-Labelle office',
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
          Spacer(
            flex: 4,
          ),
          VerticalDivider(),

          Column(

            children: [
              Text(
                'April',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 4,
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
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.redAccent),
                child: Center(
                  child: Text(
                    "CANCELLED",
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class CompletedAppoimentTile extends StatelessWidget {
  const CompletedAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 180,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "Completed : \$100.00",
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 8,
              ),
              Text('3030 Boulevard Curé-Labelle office',
                  maxLines: 2,
                  style: mediumFont.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8D8D8D))),
              SizedBox(
                height: 8,
              ),

      RatingBarIndicator(
        direction: Axis.horizontal,
        rating: 5,
        itemSize: 20,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ),


              Text(
                "HairCut,Shave",
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Text(
                "by Syed Talha Faiz",
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: Get.width/1.8,
                child: Text('When you don’t have the time to write a personal message to every customer, See more',
                    maxLines: 2,
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8D8D8D))),
              ),

            ],
          ),
          Spacer(
            flex: 4,
          ),

          Spacer(),
          Text(
            'Jan 21,2021',
            style: mediumFont.copyWith(fontSize: 12),
          ),
          Spacer(),
        ],
      ),
    );
  }
}




