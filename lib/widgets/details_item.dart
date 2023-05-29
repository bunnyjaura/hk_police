import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsItem extends StatefulWidget {
  String title;
  String? subtitle;
  bool isDropDown;
 RxList<dynamic>? dropDownItems;

  DetailsItem(
      {super.key,
      required this.title,
      this.subtitle,
       this.isDropDown = false,
      this.dropDownItems,
      });

  @override
  State<DetailsItem> createState() => _DetailsItemState();
}

class _DetailsItemState extends State<DetailsItem> {
  late String dropDownValue = 
  // widget.isDropDown ? widget.dropDownItems![0] : 
  "";
 @override
 void initState() {
   super.initState();
   setState(() {
    
    print(dropDownValue);
   });
   print("Yoohoohoh ${widget.dropDownItems} " );
 }


  @override
  Widget build(BuildContext context) {
    
    //  List<DropdownMenuItem<String>>? abc = widget.dropDownItems;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.sp, vertical: 12.sp),
      child: Container(
        padding:  EdgeInsets.all(15.sp),
        constraints:  BoxConstraints(
          minHeight: 33.sp,
        ),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style:  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
            ),
             SizedBox(
              height: 6.sp,
            ),
            Padding(
              padding:   EdgeInsets.only(left: 12.sp),
              child: widget.subtitle != null
                  ? Text(
                      '${widget.subtitle}',
                      style:  TextStyle(fontSize: 15.sp, color: Colors.black54),
                    )
                  : Container(),
            ),
//             widget.isDropDown == true
//                 ? DropdownButton(
//                     value: dropDownValue,
//                     items: widget.dropDownItems!.map(( value) {
//                       return DropdownMenuItem(
//                           value: value.toString(), child: Text(value));
//                     }).toList(),
//                     onChanged: ( newValue) {
//                       setState(() {
//                         dropDownValue = newValue.toString();
                        
//                       });
//                       // print(newValue);
//                       if(widget.title == 'Policemen Name'){
// // Controllers().userPutData.selectedPoliceMan.value = newValue.toString();
//                       }
//                       if(widget.title == 'Police Station Name'){
//                         // Controllers().userPutData.selectedPoliceStation.value = newValue.toString();
//                       }
                      
//                       // print(Controllers().userFetchData.selectedPoliceMan.value);
//                       // print(Controllers().userFetchData.selectedPoliceStation.value);
                      
//                     },
//                   )
//                 : Container()
          ],
        ),
      ),
    );
  }
}
