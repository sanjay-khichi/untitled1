import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    homeController.oninit();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //homeController.fetchApiList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Api"),
      ),
      body: Obx((){
        return ListView.builder(
            itemCount: homeController.getapiList.length,
            itemBuilder: (context ,index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    elevation: 5,
                    child: Container(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User id: ${ homeController.getapiList[index].id}",style: TextStyle(fontSize: 20),),
                            Text("id: ${ homeController.getapiList[index].id}",style: TextStyle(fontSize: 20),),
                            Text("title: ${ homeController.getapiList[index].title}",style: TextStyle(fontSize: 20),maxLines: 1,),
                            Text("body:${ homeController.getapiList[index].body}",style: TextStyle(fontSize: 20),maxLines: 1,),
                          ],
                        )
                    ),
                  ),
                ),
              );
            }
        );
      }),
    );
  }
}
