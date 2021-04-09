

import 'package:get/get.dart';

class mondayController extends GetxController{

  RxBool monday = true.obs;
  RxBool tuesday = true.obs;
  RxBool wedn = true.obs;
  RxBool thus = true.obs;
  RxBool fri = true.obs;
  RxBool sat = true.obs;
  RxBool sun = false.obs;


  void toggle() => monday.value = monday.value ? false : true;
  void toggle1() => tuesday.value = tuesday.value ? false : true;
  void toggle2() => wedn.value = wedn.value ? false : true;
  void toggle3() => thus.value = thus.value ? false : true;
  void toggle4() => fri.value = fri.value ? false : true;
  void toggle5() => sat.value = sat.value ? false : true;
  void toggle6() => sun.value = sun.value ? false : true;




}