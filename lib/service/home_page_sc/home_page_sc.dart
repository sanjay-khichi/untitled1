import 'package:dio/dio.dart';
import 'package:untitled1/model/home_page_model/home_page_model.dart';

class HomeSC{
Future<List<HomeModel>> getApiList() async {
  Response response;
  var dio = Dio();
  response = await dio.get("https://jsonplaceholder.typicode.com/posts");

  print("=======data======");

//dynamic data = {"name":"Sanjay", "password":"12345"};



  /*response.data.forEach((element){
    HomeModel homeModel = HomeModel.fromJson(element);
    mondel.add(homeModel);
  });*/
  List<HomeModel> mondel = (response.data as List).map((e) => HomeModel.fromJson(e)).toList();
 // print(mondel.toList());
  return mondel;
  //return HomeModel.fromJson(response.data);
}
}


class MapModel{
  MapModel({this.name,this.password});
String? name;
String? password;

MapModel.fromJson(Map<String,dynamic> json){

  name = json["name"];
}


}



