import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/widgets/history_item.dart';

import '../widgets/custom_appbar.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  RxList data = [].obs;
  int items = 1;
  // abc() async{
  //  await Api().policeStationHeadCase_History().then((value1) {
  //     data.value = value1['details'];
  //     print(data);
  //   });
  // }

  // @override
  // void initState() {
  //   abc();
  //   super.initState();
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'History Cases'),
      body: 
      // Obx(() => 
      // data.value.isEmpty
      //     ? const Center(child: CircularProgressIndicator())
      //     : 
      
          ListView.builder(
                itemCount: 3,
                // data.length,
                itemBuilder: (BuildContext context, int index) {
                  return HistoryItem(
                    img: '',
                    // data.value[index]['image'],
                    title: 'abfewjnfjkwenfjwnebfjbwefbewfniofeniwec',
                    // data.value[index]['patient_no'],
                    subtitle: 'fwcjndjvcwbnuvbnoiebnviwenhoviweniovnieojvopiewjfpojwepfojdef',
                    // data.value[index]['patient_address'],
                    date: '10 June 2023'
                    // data.value[index]['created'],
                    // data: data.value[index],
                  );
                },
              )
              // )
    );
  }
}
