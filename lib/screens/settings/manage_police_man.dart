import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/style.dart';
import 'package:hk_police/widgets/manage_police_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/custom_appbar.dart';
import 'add_police_man.dart';

class ManagePoliceMan extends StatefulWidget {
  
  const ManagePoliceMan({super.key});

  @override
  State<ManagePoliceMan> createState() => _ManagePoliceManState();
}

class _ManagePoliceManState extends State<ManagePoliceMan> {
  var data = [].obs;
  // abc() async{
  //  await Api().get_policeStationlist();
  //   data.value = Controllers().userFetchData.get_policeStationlist.value.obs;
  //   print(data.value);
  // }

  // @override
  // void initState() {
  //   abc();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(title: 'Manage Police Men'),
        body: 
        // Obx(() => data.value.isEmpty
        //     ? const Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     : 
            ListView.builder(
                itemCount: 5,
                // data.value.length,
                itemBuilder: (BuildContext context, int index) {
                  return ManagePoliceItem(
                    img: '',
                    // data.value[index]['image'],
                    subtitle: "SHO NAME - Name",
                    // ${data.value[index]['SHO_name']}",
                    title: 'XYZ Police Name'
                    // data.value[index]['policeStation_Name'],
                    // data: data.value[index],
                  );
                },
              ),
              // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.off(const AddPoliceMan()),
          backgroundColor: Styles().themeGreen,
          child: Icon(
            Icons.add,
            size: 25.sp,
          ),
        ));
  }
}
