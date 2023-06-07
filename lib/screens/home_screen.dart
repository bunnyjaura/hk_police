import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/screens/pending_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/home_items.dart';
import 'fresh_screen.dart';
import 'history_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//   final box = GetStorage();
//   abc() {
//     Api().policeStationHeadTotalCase().then((value) {
//       /*  Fresh_count
// Pending_count
// History_count */
//       print(value);
//       //box.write(, value);
//       if (value['message'] == "Details found successfuly") {
//         Controllers().userPutData.Fresh_count.value = value['Fresh_count'];
//         Controllers().userPutData.Pending_count.value = value['Pending_count'];
//         Controllers().userPutData.History_count.value = value['History_count'];
//       }
//       print(Controllers().userFetchData.Pending_count.value);
      
//     });
//   }

  // @override
  // void initState() {
  //   super.initState();
  //   // abc();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 27.sp, bottom: 25.sp, left: 15.sp),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: CircleAvatar(backgroundImage: const AssetImage('assets/img_police.png'),radius: 28.sp,),
                  // child: CacheProfileImage(
                  //   url: Controllers().userFetchData.image, 
                  //   radius: 35.sp),
                ),
                SizedBox(width: 60.w,
                  child: Text(
                    // '${Controllers().userFetchData.name}',
                    'Name',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeItem(
                  ontap: () => Get.to(const FreshScreen()),
                  heading: 'Fresh Cases',
                  image: 'assets/ic_fresh_cases.png',
                  title: 'Fresh case',
                  number: 3,
                  // Controllers().userFetchData.Fresh_count.value,
                ),
              HomeItem(
                  heading: 'Pending',
                  image: 'assets/ic_pending.png',
                  title: 'Pending case',
                  number: 2,
                  // Controllers().userFetchData.Pending_count.value,
                  ontap: () => Get.to( const PendingScreen()),
                ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             HomeItem(
                    heading: 'History',
                    image: 'assets/ic_history.png',
                    title: 'History case',
                    number: 2,
                    // Controllers().userFetchData.History_count.value,
                    ontap: () => Get.to(const HistoryScreen()),
                  ),
              HomeItem(
                heading: 'Settings',
                image: 'assets/ic_settings.png',
                ontap: () => Get.to(SettingsScreen(
                  // img: '',
                  // img: Controllers().userFetchData.image,
                  )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
