import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/settings/details_police_man.dart';

class ManagePoliceItem extends StatelessWidget {
  String img;
  var title;
  String subtitle;
  var data;
   ManagePoliceItem({super.key,
   required this.img,required this.subtitle,required this.title, this.data
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.sp,horizontal: 15.sp),
      child: InkWell(
        onTap: () => Get.to(  DetailsPoliceMan(img: img,data: data,)),
        child: Container(
          height: 40.sp,
          width: 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.sp ),color: Colors.white,boxShadow: const [BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 4,
                      offset: Offset(-1, 4),
                      color: Color.fromARGB(20, 0, 0, 0))]),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                        child: Row(children: [
                        //  CacheProfileImage(url: img, radius: 35.sp),
                        CircleAvatar(backgroundImage: const AssetImage('assets/img_patient.jpg'),radius: 25.sp,),
                       
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 15.sp,horizontal: 10.sp),
                            child: SizedBox(width: 62.sp,
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                                title,
                                                style:  TextStyle(fontWeight: FontWeight.w600,fontSize: 15.5.sp),maxLines: 2,
                                              ),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: 4.sp),
                                                child: Text(
                              subtitle,
                              style:  TextStyle(color: Colors.grey, fontSize: 15.sp),overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                              ],),
                            ),
                          ),
                          
                        ]),
                        
                      ),
      
        ),
      ),
    );
  }
}