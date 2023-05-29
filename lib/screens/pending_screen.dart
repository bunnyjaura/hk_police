import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/widgets/history_item.dart';

import '../widgets/custom_appbar.dart';

class PendingScreen extends StatefulWidget {
  const PendingScreen({super.key});

  @override
  State<PendingScreen> createState() => _PendingScreenState();
}

class _PendingScreenState extends State<PendingScreen> {
  var data = [].obs;
// abc()async {
//  await  Api().policeHeadquaterPendingCase();
// data.value = Controllers().userFetchData.policeHeadquaterPendingCase.value.obs;
// print(data.value);
// }

// @override
// void initState() {
//   super.initState();
//   abc();
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Pending Cases'),
      body:
          // Obx(() =>
          //  data.value.isEmpty? const Center(child: CircularProgressIndicator(),):
          ListView.builder(
        itemCount: 5,
        // data.length,
        itemBuilder: (BuildContext context, int index) {
          return HistoryItem(
            subtitle: 'hvyjhvyviugbuihihiohbuhbububhub',
            // data.value[index]["patient_address"],
            title: 'Case no- 5446756uyfyufyuf7567 ',
            // data.value[index]["patient_no"],
            img: '',
            // data.value[index]["image"],
            isPending: true,
            // data: 
            // data.value[index],
            date: '10 June 2023',
          );
        },
      ),
      // )
    );
  }
}
