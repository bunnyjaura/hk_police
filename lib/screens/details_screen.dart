import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hk_police/widgets/details_item.dart';
import 'package:hk_police/widgets/myGreenButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'home_screen.dart';

class DetailsScreen extends StatefulWidget {
  String title;
  var img;
  var data;
  var data1;
  bool isFresh;
  String? assignId;
  DetailsScreen(
      {super.key,
      required this.title,
      this.img,
      this.data,
      this.data1,
      required this.isFresh,
      this.assignId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> items = [
    'Details',
    'Doctor Name',
    'Hospital',
    'Ambulance No',
    'Driver Name',
    'Police Head Quarter Name',
  
    'Place Of Accident',
    'Police Report'
  ];

// abc(){
//   print(Controllers().userFetchData.get_policeStationlist.value);
// }

  // bool isLoad = false;
  // @override
  // void initState() {
  //   setState(() {
  //     isLoad = true;
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // List<dynamic> details = [
    //   widget.data['patient_details'],
    //   widget.isFresh ? widget.data['docId'] : widget.data['doctor_id'],
    //   widget.data['hospitalName'],
    //   widget.data['ambulance_number'],
    //   widget.data['driver_name'],
    //   widget.data['SHO_name'],
    //   widget.isFresh
    //       ? widget.data['username']
    //       : widget.data['policeStation_Name'],
    //   widget.data['patient_address'],
    //   widget.data['report'],
    // ]

    // List dropdownitems = [Controllers().userFetchData.get_policeStationlist];

    return Scaffold(
      appBar: AppBar(
      
  leading: InkWell(
    onTap: () => widget.isFresh? Get.back(): Get.back(),
    child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
  centerTitle: true,
  title:   Text(widget.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17.sp),),
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
),
      body: 
      // widget.data == null
      //     ? const Center(child: CircularProgressIndicator())
      //     : 
          SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.sp),
                    child: 
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/img_patient.jpg')
                        // widget.data['image'] == ''
                        //     ? Container()
                        //     : CachedNetworkImage(
                        //         imageUrl: widget.data['image'] ?? Container(),
                        //         height: 50.sp,
                        //         fit: BoxFit.fitHeight,
                        //       )
                              ),
                  ),
                  widget.isFresh == true
                      ? Column(
                        children: [
                          ListView.builder(
                            padding: const EdgeInsets.only(bottom: 0),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return DetailsItem(
                                  title: 
                                  items[index],
                                  subtitle: 'abgvgvgvuybyubiubiubiubiubiubiubububuibuibuibuibuibuibuibuibuudnfdnfneonfoweinfoienwiojdiejideiwdc',
                                  // details[index],
                                  isDropDown: false);
                            },
                          ),
                          DetailsItem(
                            title: items[5],
                            // subtitle: details[5],
                            isDropDown: false,
                            // dropDownItems: ['a','b','c'],
                            // dropDownItems:
                                // Controllers().userFetchData.policeMenList,
                          ),
                          // DetailsItem(
                          //   title: items[6],
                          //   // subtitle: details[6],
                          //   isDropDown: true,
                          //   // dropDownItems: Controllers()
                          //   //     .userFetchData
                          //   //     .policeStationList,
                          // ),
                          DetailsItem(
                            title: items[6],
                            subtitle: 'abc',
                            // details[7],
                            isDropDown: false,
                          ),
                        ],
                      )
                      : ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return DetailsItem(
                                title: items[index],
                                subtitle:'awdqdjqwbduiqbnduihiudqwhihwdqoihwiodniwodninqiwodniowqndionwionqdnjwqdnjqwndiuniqudnioqdwniodwnioqwdnionwdqioqdnwbc',
                                //  details[index],
                                isDropDown: false);
                          },
                        ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.sp),
                    child: MyGreenButton(
                      text: widget.isFresh ? 'Ready to send' : 'Case Closed',
                      width: 50.sp,
                      onTap: () {
                        if (!widget.isFresh) {
                        } else {
                          // Api().assignCaseToPoliceStation(
                          //     assignId: "${widget.assignId}");
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  )
                ],
              )),
            ),
    );
  }
}
