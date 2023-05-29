import 'package:flutter/material.dart';
import 'package:hk_police/style.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class ChangePassTextField extends StatefulWidget {
  String? hintText;
  String? errorText;
  String? initialValue;
  bool isPassword;
  bool boolonTap;
  TextEditingController? controller;
   ChangePassTextField({super.key,this.controller,this.hintText,this.initialValue,this.errorText,this.boolonTap =false,this.isPassword=false});

  @override
  State<ChangePassTextField> createState() => _ChangePassTextFieldState();
}

class _ChangePassTextFieldState extends State<ChangePassTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.sp),
      child: SizedBox(
        height: 26.sp,
        
        child: TextFormField(initialValue: widget.initialValue,
          controller: widget.controller,
            obscureText: widget.isPassword,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.key),prefixIconColor: Styles().themeGreen,
        contentPadding: EdgeInsets.only(left: 15.sp),
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
        hintText: widget.hintText,errorText: widget.errorText,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30.sp),borderSide: BorderSide(color: Styles().themeGreen)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30.sp),borderSide: BorderSide(color: Styles().themeGreen)),
      ),
      
        ),
      ),
    );
  }
}