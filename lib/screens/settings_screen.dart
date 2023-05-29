import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hk_police/screens/settings/about.dart';
import 'package:hk_police/screens/settings/help.dart';
import 'package:hk_police/screens/settings/manage_police_man.dart';
import 'package:hk_police/screens/settings/terms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/settings_item.dart';

class SettingsScreen extends StatelessWidget {
  String? img;
  SettingsScreen({super.key, this.img});
  List<String> names = [
    // 'My Profile',
    'Manage Police Men ',
    'About',
    'Help',
    'Terms & Conditions',
    'Logout'
  ];
  List<IconData> icons = [
    Icons.person,
    // Icons.local_post_office,
    Icons.note_add,
    Icons.help,
    Icons.confirmation_num,
    Icons.logout,
  ];

  Map i = {
    
    0: {
      "name": "Manage Police Men",
      "icon": Icons.local_post_office,
      "to": const ManagePoliceMan(),
    },
    1: {
      "name": "About",
      "icon": Icons.note_add,
      "to": const AboutScreen(),
    },
    2: {
      "name": "Help",
      "icon": Icons.help,
      "to": const HelpScreen(),
    },
    3: {
      "name": "Terms & Conditions",
      "icon": Icons.confirmation_num,
      "to": const TermsScreen(),
    },
    4: {
      "name": "Logout",
      "icon": Icons.logout,
      // "to": const ProfileScreen(),
    },
  };
  final box = GetStorage();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 37.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                     Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: CircleAvatar(radius: 30.sp,backgroundImage: const AssetImage('assets/img_police.png',)),
                    // child: CacheProfileImage(url: Controllers().userFetchData.image, radius: 30.sp),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 65.w,
                        child: Text(
                          'name',maxLines: 2,
                          // '${Controllers().userFetchData.name}',
                          style:  TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w600,),overflow: TextOverflow.clip,
                        ),
                      ),

                      Text('address'
                        // '${Controllers().userFetchData.address}'
                        ,
                          style:  TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.sp,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return SettingsItem(
                    name: names[index],
                    icon: icons[index],
                    ontap: () => Get.to(i[index]["to"]),
                  );
                },
              ),
            ),
            SettingsItem(
              trailing: false,
                name: i[4]['name'],
                icon: i[4]['icon'],
                ontap: () {
                  // Api().logout().whenComplete(() => null).then((value) {
                  //   box.erase();
                  //   Get.offAll(const SplashScreen());
                  // });
                })
          ],
        ),
      ),
    );
  }
}
