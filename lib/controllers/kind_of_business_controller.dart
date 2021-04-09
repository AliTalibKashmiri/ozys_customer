import 'package:get/get.dart';
import 'package:ozys_customer/models/kindOfbusiness.dart';

class KindOfBusinessController extends GetxController {
  List<BusinessTypeModel> todos = [
    BusinessTypeModel(
      title: 'BusinessTypeModel',
    ),
    BusinessTypeModel(
      title: 'BusinessTypeModel',
    ),
    BusinessTypeModel(
      title: 'BusinessTypeModel',
    ),
    BusinessTypeModel(
      title: 'BusinessTypeModel',
    ),
  ];

  List<String> todoTemp = [];

  changeStatus(String todo, bool condition) {
    if (condition) {
      todoTemp.add(todo);
    } else {
      todoTemp.remove(todo);
    }
    print(todoTemp.length);
    update();
  }
}
