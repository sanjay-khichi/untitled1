import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled1/model/home_page_model/home_page_model.dart';
import 'package:untitled1/service/home_page_sc/home_page_sc.dart';

class HomeController extends GetxController{
  HomeSC getApi = HomeSC();

  var apiList = <HomeModel>[].obs;
  List<HomeModel> get getapiList => apiList.value;
  set setapiList( List<HomeModel> val){
    apiList.value = val;

  }
 void oninit() async{
    print("init");
    super.onInit();
    await fetchApiList();
    print(apiList.value);
 }


  Future<void> fetchApiList() async{
    List<HomeModel> result =  await getApi.getApiList();
    print("========================result==================");
   if(result!= null){
     setapiList = result;
     print(result);
     update();
   }
  }
}