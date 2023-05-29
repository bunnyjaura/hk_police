import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/fresh_item.dart';

class FreshScreen extends StatefulWidget {
  const FreshScreen({
    super.key,
  });

  @override
  State<FreshScreen> createState() => _FreshScreenState();
}


class _FreshScreenState extends State<FreshScreen> {
var data = [].obs;
var data1 = [].obs;
  int items = 2;

  // Future<void> abc() async {
  //   await Api().patientDetailsByPoliceSta();
    
  //   data.value =
  //       Controllers().userFetchData.patientDetailsByPoliceSta.value.obs;
  //   print(data.value);
  //  await  Api().get_policeStationlist();
   
  //   data1.value =
  //       Controllers().userFetchData.get_policeStationlist.value.obs;
  //       for (var element
  //       in Controllers().userFetchData.get_policeStationlist.value) {
  //     Controllers()
  //         .userPutData
  //         .policeStationList
  //         .value
  //         .add("${element["policeStation_Name"]}");
  //     Controllers()
  //         .userPutData
  //         .policeMenList
  //         .value
  //         .add("${element["SHO_name"]}");
  //       }
  //   // print(data1.value);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   abc();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(title: 'Fresh Cases'),
        body: 
        //  obx
          // data.value.isEmpty
          //     ? const Center(child: CircularProgressIndicator())
          //     :
               ListView.builder(
                  itemCount: 5,
                  // data.value.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FreshItem(
                      // data: data.value[index],
                      // data1: data1.value,
                      caseNo: 'ABdfwjkbfcuiwehfbcuiwhefuihwefiojewiojfoiejwfC',
                      // data.value[index]['patient_no'],
                      date: '10 June 2023',
                      // data.value[index]['created'],
                      location:'CDcnsdkncvkdsnfiodsjnfiosdjfiosdjofsoidjfojfdinF'
                      //  data.value[index]['patient_address'],
                    );
                  },
                ),
        );
  }
}
