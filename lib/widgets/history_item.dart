import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/screens/details_screen.dart';
import 'package:hk_police/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HistoryItem extends StatelessWidget {
  String title;
  String subtitle;
  String? date;
  String img;
  var data ;
bool isPending;
  HistoryItem(
      {super.key,
      required this.title,
      required this.subtitle,
       this.date,
      required this.img ,this.data,this.isPending = false
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
      child: InkWell(
        onTap: () => Get.to(DetailsScreen(
          isFresh: false,
          data: data,
          title: title,
          img: img,
        )),
        child: Stack(
          children: [
            Container(
              padding:  EdgeInsets.symmetric(vertical: 10.sp),
              width: 100.w,
              height: 40.sp,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.sp),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 4,
                        offset: Offset(-1, 4),
                        color: Color.fromARGB(20, 0, 0, 0))
                  ]),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15.sp),
                        child: CircleAvatar(backgroundImage: const AssetImage('assets/img_patient.jpg'),radius: 25.sp,),
                        // child: CacheProfileImage(url: img, radius: 30.sp)
                        ),
                      
                      SizedBox(width: isPending? 60.sp : 65.sp,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style:  TextStyle(fontWeight: FontWeight.w700,fontSize: 15.5.sp,),maxLines: 2,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.sp),
                              child: Text(
                                subtitle,
                                style:  TextStyle(color: Colors.grey, fontSize: 15.sp),overflow: TextOverflow.ellipsis,
                              ),
                            ),
                           isPending? Container(): Text(
                              "$date",
                              style:  TextStyle(color: Colors.grey,fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ],
              ),
              
            ),
            isPending? 
                   Positioned(right: 0,top: 8.sp,
                     child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                      child:  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(text: TextSpan(children: [
                           TextSpan(text: 'Date- ',style: TextStyle(fontSize: 15.sp,color: Styles().themeGreen,fontWeight: FontWeight.w500)), 
                           TextSpan(text: '$date',style: TextStyle(fontSize: 15.sp,color: Colors.black,)) 
                          ])),
                          // Text('$date',style: TextStyle(fontSize: 15.5.sp,),),
                          Align(heightFactor: 6.8.sp,
                            child: Text('Pending',style: TextStyle(color: Colors.red,fontSize: 15.sp,fontWeight: FontWeight.w500),)),
                          
                        ],
                      ),
                                 ),
                   ): Container()
          ],
        ),
      ),
    );
  }
}
