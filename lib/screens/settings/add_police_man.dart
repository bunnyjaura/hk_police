import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hk_police/style.dart';
import 'package:hk_police/widgets/custom_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/custom_textfield.dart';
import '../../widgets/myGreenButton.dart';

class AddPoliceMan extends StatefulWidget {
  const AddPoliceMan({super.key});

  @override
  State<AddPoliceMan> createState() => _AddPoliceManState();
}

class _AddPoliceManState extends State<AddPoliceMan> {
  File? _image;
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  TextEditingController policeStation_Name = TextEditingController();
  TextEditingController SHO_name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Landline = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Add Police Men'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Police Man Name',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              CustomTextField(
                readOnly: false,
                hinttext: 'Type...',
                controller: policeStation_Name,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Add Photo',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 45.sp,
                    width: 45.sp,
                    child: _image != null
                        ? Image.file(
                            _image as File,
                            height: 45.sp,
                            fit: BoxFit.fill,
                          )
                        : Image.asset(
                            'assets/img_policeman.png',
                            fit: BoxFit.fill,
                            height: 45.sp,
                          ),
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                  InkWell(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {

                        showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20.sp),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          InkWell(onTap: ()=> _pickImage(ImageSource.camera),
                                            child: Icon(
                                              Icons.camera_alt,
                                              size: 35.sp,
                                            ),
                                          ),
                                          Text(
                                            'Camera',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.sp,
                                      ),
                                      Column(
                                        children: [
                                          InkWell(onTap:()=> _pickImage(ImageSource.gallery),
                                            child: Icon(
                                              Icons.image,
                                              size: 35.sp,
                                            ),
                                          ),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              );
                            });
                      },
                      child: Container(
                        height: 45.sp,
                        width: 45.sp,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Styles().themeGreen,
                            foregroundColor: Colors.white,
                            radius: 15.sp,
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
              //   child: Text(
              //     'SHO Name',
              //     style: TextStyle(
              //         fontSize: 16.sp,
              //         fontWeight: FontWeight.w600,
              //         color: Colors.black),
              //   ),
              // ),
              // CustomTextField(
              //   readOnly: false,
              //   hinttext: 'Type...',
              //   controller: SHO_name,
              // ),
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
                readOnly: false,
                hinttext: 'Type...',
                controller: Email,
                keyboardType: TextInputType.emailAddress,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Address',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              CustomTextField(
                readOnly: false,
                hinttext: 'Type...',
                controller: Address,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.sp, bottom: 5.sp),
                child: Text(
                  'Official Contact',
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
                readOnly: false,
                controller: Mobile,
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Landline',
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
              ),
              CustomTextField(
                readOnly: false,
                controller: Landline,
                keyboardType: TextInputType.phone,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.sp, bottom: 10.sp),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 16.sp, color: Colors.black87),
                ),
              ),
              CustomTextField(
                readOnly: false,
                isPassword: true,
                boolonTap: true,
                hinttext: 'Enter New Password',
                controller: Password,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Center(
                  child: MyGreenButton(
                text: "Submit",
                onTap: () {
                  // Api().add_policesStation(
                  //     policeStation_Name: policeStation_Name.text,
                  //     SHO_name: SHO_name.text,
                  //     lan_line: Landline.text,
                  //     phone: Mobile.text,
                  //     image: _image,
                  //     password: Password.text,
                  //     email: Email.text,
                  //     address: Address.text);
                },
              )),
              SizedBox(
                height: 10.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
