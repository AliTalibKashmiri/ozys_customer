import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_customer/controllers/notification_Controller.dart';
import 'package:ozys_customer/models/notification_model.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';

class NotificationPage extends StatelessWidget {


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
        title: "Notification",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Divider(),
              SizedBox(
                height: 5,
              ),

              GetBuilder<NotificationController>(
                  init: NotificationController(),
                  builder: (controler) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: controler.notif.length,
                          itemBuilder: (context, index) {
                            return NotificationTile(
                              notificationModel: controler.notif[index],
                            );
                          }),
                    );
                  }),

            ],
          ),
        ),
      ),
    );
  }
}



class NotificationTile extends StatefulWidget {
  NotificationModel notificationModel;


  NotificationTile({this.notificationModel,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<NotificationTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.notificationModel.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),
              Text(widget.notificationModel.time,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
            ],
          ),
          Text(widget.notificationModel.msg,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
        SizedBox(height: 5,),
          Divider(),
          SizedBox(height: 5,),
        ],
      ),
    );
    ;
  }
}







