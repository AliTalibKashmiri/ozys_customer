import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:ozys_customer/controllers/business_hour_controller.dart';
import 'package:ozys_customer/controllers/kind_of_business_controller.dart';
import 'package:ozys_customer/models/kindOfbusiness.dart';
import 'package:ozys_customer/views/widgets/appBar.dart';
import 'package:ozys_customer/views/widgets/colors.dart';
import 'package:ozys_customer/views/widgets/custom_button.dart';
import 'package:ozys_customer/views/widgets/custom_text_field.dart';
import 'package:ozys_customer/views/widgets/social_button.dart';

class KindOfBusinessPage extends StatelessWidget {
  // List<businessType> bussinesss = [
  //   businessType(title: "Hair Salon"),
  // ];

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Business Hours",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: Container(
          width: Get.width,
          height: Get.height,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'What Kind Of Business Are You?',
                style:
                    heding.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 30,
              ),

              GetBuilder<KindOfBusinessController>(
                  init: KindOfBusinessController(),
                  builder: (controler) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: controler.todos.length,
                          itemBuilder: (context, index) {
                            return TodoTile(
                              onPress: (value) {
                                controler.changeStatus(
                                    controler.todos[index].title, value);
                              },
                              todo: controler.todos[index],
                            );
                          }),
                    );
                  }),

              // ListTile(
              //   leading: CircularCheckBox(value: this.selected, checkColor: Colors.white  ,activeColor: Colors.green, inactiveColor: Colors.redAccent, disabledColor: Colors.grey , onChanged: (val) => this.setState(() { this.selected= !this.selected ;}) ),
              //   title: Text("Click me"),
              //   onTap: ()=> this.setState(() { this.selected= !this.selected ;}),
              // ),

              SizedBox(
                height: Get.height / 3,
              ),

              CustomButton(
                lable: "Continue",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: () {
                  // Get.offNamed('/YourAddress2');
                },
              ),

              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }

  Widget get rectBorderWidget {
    return DottedBorder(
      color: Colors.grey,
      dashPattern: [8, 6],
      strokeWidth: 1,
      child: Container(
        height: Get.height / 5,
        width: Get.width,
        child: Center(
            child: Icon(
          Icons.add_circle,
          size: 30,
          color: Colors.grey,
        )),
      ),
    );
  }
}

class TodoTile extends StatefulWidget {
  BusinessTypeModel todo;
  ValueChanged onPress;

  TodoTile({this.todo, this.onPress});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          Checkbox(
              activeColor: Colors.green,
              checkColor: Colors.black,
              value: isSelected,
              onChanged: (value) {
                isSelected = value;
                print('=====');
                setState(() {
                  widget.onPress(value);
                });
              }),
          Text(widget.todo.title),
        ],
      ),
    );
    ;
  }
}
