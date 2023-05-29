import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/home_screen.dart';

// class CustomAppBar  {
//   String title;
//    CustomAppBar({required this.title});

  
//     PreferredSizeWidget myAppBar =  AppBar(
      
//   leading: InkWell(
//     onTap: () => Get.back(),
//     child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
//   centerTitle: true,
//   title:   Text('title',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17.sp),),
//   elevation: 0,
//   backgroundColor: Colors.transparent,
//   actions: [
//    Padding(
//      padding:  EdgeInsets.all(16.0.sp),
//      child: InkWell(
//       onTap: () => Get.off(const HomeScreen()),
//       child: Image.asset('assets/ic_home.png')),
//    )
//   ],
// );
  
// }
// class CustomAppbar extends StatelessWidget {
// const CustomAppbar({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return AppBar(
      
//   leading: InkWell(
//     onTap: () => Get.back(),
//     child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
//   centerTitle: true,
//   title:   Text('title',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17.sp),),
//   elevation: 0,
//   backgroundColor: Colors.transparent,
//   actions: [
//    Padding(
//      padding:  EdgeInsets.all(16.0.sp),
//      child: InkWell(
//       onTap: () => Get.off(const HomeScreen()),
//       child: Image.asset('assets/ic_home.png')),
//    )
//   ],
// );;
//   }
// }
  

PreferredSizeWidget   myAppBar ({required String title, }) {
  return AppBar(
      
  leading: InkWell(
    onTap: () => Get.back(),
    child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
  centerTitle: true,
  title:   Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17.sp),),
  elevation: 0,
  backgroundColor: Colors.transparent,
  actions: [
   Padding(
     padding:  EdgeInsets.all(16.0.sp),
     child: InkWell(
      onTap: () => Get.off(const HomeScreen()),
      child: Image.asset('assets/ic_home.png')),
   )
  ],
);
}