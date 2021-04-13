import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';

class ClientPaymentHistoryPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    var data = 'Completed';
    var data2 = '\$14.00';
    var data3 = 'Syed Talha Faiz';
    var data4 = '003283922028111';

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client Payment History",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),

              Text(
                'Payment History',
                style: mediumFont.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              PaymentHistoryTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              PaymentHistoryTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 5,
              ),
              Divider(),


            ],
          ),
        ),
      ),
    );
  }
}




class PaymentHistoryTile extends StatelessWidget {
  const PaymentHistoryTile({
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 20,
                width: 80,
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
                height: 4,
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
              Text(
                  data4,
                  maxLines: 2,
                  style: mediumFont.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8D8D8D))
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








