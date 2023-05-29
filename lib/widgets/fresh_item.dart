import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/screens/details_screen.dart';
import 'package:hk_police/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FreshItem extends StatelessWidget {
  String caseNo;
  String date;
  String location;
 
  var data;
  var data1;

  FreshItem({
    super.key,
    required this.caseNo,
    required this.date,
    required this.location,
    this.data,
    this.data1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
      child: Stack(alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 50.sp,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: Colors.white,
                boxShadow:  [
                  BoxShadow(
                      blurRadius: 5.sp,
                      spreadRadius: 4.sp,
                      offset: const Offset(-1, 4),
                      color: const Color.fromARGB(20, 0, 0, 0))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.all(13.0.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 60.sp,
                        child: RichText(maxLines: 2,
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Case No: ',
                              style: TextStyle(
                                  color: Styles().themeGreen,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: caseNo,
                              style: const TextStyle(
                                color: Colors.black,
                              )),
                        ])),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Date: ',
                            style: TextStyle(
                                color: Styles().themeGreen,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: date,
                            style: const TextStyle(color: Colors.black)),
                      ])),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 13.sp, vertical: 5.sp),
                  child: SizedBox(width: 75.sp,
                    child: RichText(overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Location: ',
                          style: TextStyle(
                              color: Styles().themeGreen,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: location,
                          style: const TextStyle(color: Colors.black)),
                    ])),
                  ),
                ),
                Divider(
                  color: Styles().themeGreen,
                  thickness: 1,
                ),
               
             
              ],
            ),
          ),
             Positioned(
              bottom: 12.sp,
               child: InkWell(
                 onTap: () => Get.to(DetailsScreen(
                   // assignId: data['assignId'],
                   img: '',
                   isFresh: true,
                   title: caseNo,
                   
                   // data: data,
                   // data1: data1,
                 )),
                 child: Container(
                   height: 25.sp,
                   width: 40.sp,
                   decoration: BoxDecoration(
                       color: Styles().themeGreen,
                       borderRadius: BorderRadius.circular(20.sp)),
                   child: const Center(
                       child: Text(
                     'Details',
                     style: TextStyle(color: Colors.white),
                   )),
                 ),
               ),
             )
        ],
      ),
    );
  }
}
