import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/myGreenButton.dart';

class DetailsPoliceMan extends StatefulWidget {
  String? img;
  var data;
  DetailsPoliceMan({super.key, required this.data,  this.img});

  @override
  State<DetailsPoliceMan> createState() => _DetailsPoliceManState();
}

class _DetailsPoliceManState extends State<DetailsPoliceMan> {
  bool isEdit = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title:
              isEdit ? 'Update Police Men' : 'Details of Police Men'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.sp),
                    child: CircleAvatar(backgroundImage: const AssetImage('assets/img_patient.jpg'),radius: 35.sp,),
                    // child: CacheProfileImage(url: widget.img, radius: 45.sp)
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Police Men Name',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              CustomTextField(
                readOnly: isEdit ? false : true,
                text: 'vygvyv'
                // widget.data['policeStation_Name'],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'SHO Name',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              CustomTextField(
                readOnly: isEdit ? false : true,
                text: 'huhuhu'
                // widget.data['SHO_name'],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              CustomTextField(
                readOnly: isEdit ? false : true,
                text:'lhbhbb'
                //  widget.data['email'],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.sp, bottom: 10.sp),
                child: Text(
                  'Official Phone No.',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp),
                child: Text(
                  'Mobile No.',
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
              ),
              CustomTextField(
                keyboardType: TextInputType.phone,
                readOnly: isEdit ? false : true,
                text: '76576576'
                // widget.data['phone'],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Landline',
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
              ),
              CustomTextField(keyboardType: TextInputType.phone,
                readOnly: isEdit ? false : true,
                text:'6757657'
                //  widget.data['lan_line'],
              ),
              Visibility(
                visible: isEdit,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                  ),
                ),
              ),
              Visibility(
                visible: isEdit,
                child: CustomTextField(
                  readOnly: isEdit ? false : true,
                  text:'78568767'
                  //  widget.data['lan_line'],
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              isEdit
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [MyGreenButton(text: 'Update')])
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyGreenButton(
                          text: "Edit",
                          onTap: () {
                            if (isEdit == false) {
                              setState(() {
                                isEdit = true;
                              });
                            } else {
                              setState(() {
                                isEdit = false;
                              });
                            }
                          },
                        ),
                        MyGreenButton(
                          text: "Delete",
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.sp)),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15.sp),
                                    content: SizedBox(
                                      height: 50.sp,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(top: 15.sp),
                                            child: Image.asset(
                                              'assets/ic_info.png',
                                              color: Styles().themeGreen,
                                              scale: 7,
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 15.sp),
                                            child: Text(
                                              'Are you sure?',
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'You will not be able to recover this!',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actionsAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    actionsPadding:
                                        EdgeInsets.only(bottom: 20.sp,),
                                    actions: [
                                      InkWell(
                                        onTap: () => Get.back(),
                                        child: Container(
                                          width: 42.sp,
                                          height: 25.sp,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.sp),
                                              color: Colors.red),
                                          child: Center(
                                              child: Text(
                                            'No',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          // Api().delete_police_Station(widget.data['id']);
                                        },
                                        child: Container(
                                          width: 42.sp,
                                          height: 25.sp,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.sp),
                                              color: Styles().themeGreen),
                                          child: Center(
                                              child: Text(
                                            'Yes,Delete it!',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )),
                                        ),
                                      )
                                    ],
                                  );
                                });
                          },
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
