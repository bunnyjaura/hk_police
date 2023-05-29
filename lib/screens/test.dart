
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:get/get_state_manager/get_state_manager.dart';

class TestScreen extends StatefulWidget {
   const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
var data = [].obs;

final controller = g.Get.put(ApiController());
@override
void initState() {
  super.initState();
  ApiController().getHttp();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child:
          FutureBuilder(
        future: ApiController().getHttp(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
           return const Center(child: Text('waiting'),);
          }
          if(snapshot.hasError){
          return  const Center(child: Text('Error'),);
          }
          else{
 return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: data[index]['title'],
          );
        },
      );
          }

      },)
          //  GetX<ApiController>(
          //   init: ApiController(),
          // initState: (state) {
          
          // controller.getHttp().then((value) {
          // data.value = value;
          // print(data.value);
          // });
          // },
          // builder: (controller) {
          // return  data.value== null? const Center(child: Text('empty'),):
          //  ListView.builder(
          //   itemCount: data.value.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ListTile(
          //       title: Text(data.value[index]['title']),
          //     );
          //   },
          // );
          // },
          //   ),
        )
//       body: 

        );
  }
}

class ApiController extends GetxController {
  final dio = Dio();

  var data1 = [].obs;

  final url = 'https://jsonplaceholder.typicode.com/posts';

  getHttp() async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
       data1.value = response.data ;
print(data1.value);
 return data1.value;
     
    } else {
      g.Get.snackbar('Error', 'Some');
    }
// print
// return data.value;
  }
}
