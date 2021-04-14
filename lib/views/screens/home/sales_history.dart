import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controllers/notification_Controller.dart';
import 'package:ozys_customer/controllers/sales_history_controller.dart';
import 'package:ozys_customer/models/notification_model.dart';
import 'package:ozys_customer/models/sales_history_model.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_circle.dart';

class SalesHistoryPage extends StatelessWidget {

  final SalesHistoryController mycontroller = Get.put(SalesHistoryController());
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;



    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Sales History",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            TabBar(
              controller: mycontroller.controller,
              tabs: mycontroller.myTabs,
            ),
            Divider(),
            SizedBox(height: 10,),
            Expanded(
              flex: 1,
              child: MyTabbedWidget(),
            ),



          ],
        ),
      ),
    );
  }
}



class MyTabbedWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final SalesHistoryController _tabx = Get.put(SalesHistoryController());
    // ↑ init tab controller

    return  TabBarView(
        controller: _tabx.controller,
        children: _tabx.myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Center(
            child: GetBuilder<SalesHistoryController>(
                init: SalesHistoryController(),
                builder: (controler) {
                  return Expanded(
                    child: ListView.separated(
                        itemCount: controler.notif.length,
                        itemBuilder: (context, index) {
                          return SalesTile(
                            notificationModel: controler.notif[index],
                          );
                        },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 30,
                        );
                      },
                    ),
                  );
                }),
          );
        }).toList(),
      );
  }
}


class SalesTile extends StatefulWidget {
  SalesHistoryModel notificationModel;


  SalesTile({this.notificationModel,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<SalesTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCircleAvator(width: 40.0, height: 40.0, data: widget.notificationModel.img, colr: mainColor, bgColor: mainColor),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(widget.notificationModel.time,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),
                  SizedBox(width: 5,),
                  Text(widget.notificationModel.date,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),

                ],
              ),
              Row(
                children: [
                  Text(widget.notificationModel.title,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
                  SizedBox(width: 5,),
                  Text(widget.notificationModel.msg,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
                ],
              ),
            ],
          ),
          Spacer(),
          Text(widget.notificationModel.paymnet,style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 14,fontWeight: FontWeight.w300),),
          SizedBox(width: 5,),
          Icon(Icons.arrow_forward_ios,size: 14,)
        ],
      ),
    );
    ;
  }
}




