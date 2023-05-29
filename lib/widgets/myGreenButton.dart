import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../style.dart';


class MyGreenButton extends StatelessWidget {
  String text;
  double? width;
  void Function()? onTap;
   MyGreenButton({super.key,required this.text,this.width,this.onTap});

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
              padding: EdgeInsets.symmetric(vertical: 15.sp),
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 28.sp,
                  width: width ?? 45.sp,
                  decoration: BoxDecoration(
                      color: Styles().themeGreen,
                      borderRadius: BorderRadius.circular(30.sp),boxShadow:  [
                       BoxShadow(
                      blurRadius: 5.sp,
                      spreadRadius: 4.sp,
                      offset: const Offset(-1, 4),
                      color: const Color.fromARGB(20, 0, 0, 0))
                      ]),
                  child:  Center(
                      child: Text(
                    text,
                    style:  TextStyle(color: Colors.white,fontSize: 15.sp),
                  )),
                ),
              ),
            );
  }
}