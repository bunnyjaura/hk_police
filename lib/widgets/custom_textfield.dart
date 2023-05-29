import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatefulWidget {
  bool readOnly;
  String? text;
  String? hinttext;
  String? initialValue;
  bool isPassword ;
  bool? boolonTap;
  TextInputType? keyboardType;
  TextEditingController? controller;
   CustomTextField({super.key,required this.readOnly, this.text,this.initialValue, this.hinttext, this.isPassword=false,this.boolonTap = false,this.controller,this.keyboardType});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.sp,
      width: 100.w,
      child:  TextFormField(
        initialValue: widget.text,
        keyboardType: widget.keyboardType ,
        controller: widget.controller,
        enabled: widget.readOnly ==true ? false : true,
        obscureText: widget.isPassword,
       textAlignVertical: TextAlignVertical.center,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          suffixIcon: widget.boolonTap == true
          ? InkWell(
              onTap: () {
                if (widget.boolonTap== true) {
                  print(widget.isPassword);
                  setState(() {
                    widget.isPassword = !widget.isPassword;
                  });
                }
              },
              child: Icon(
                widget.isPassword
                    ? Icons.visibility_off
                    : Icons.remove_red_eye,
                color: widget.isPassword ? Colors.black26 : Colors.black,
              ))
          : null,
          contentPadding:  EdgeInsets.only(left: 15.sp),
          
          hintText: widget.hinttext,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.sp)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.sp)
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.sp)
          ),
        ),
        
      ),
    );
  }
}