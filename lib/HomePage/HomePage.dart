import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/pages/pageView/all_request_page.dart';
import 'package:tutor_eye_app/sliderwithdot/slider.dart';
import '../custome_stepper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  String dropdownvalue = 'High School';
  var items = ["High School", "SSC"];
  int btmnavigate = 0;
  int _currentIndex = 0;
  String drpdwnvalue;
  var i = ["hello"];
  var itmes = ["item1", "item2", "item3"];
  final TextEditingController _textfiledcontroller = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();

//text editing controller for text field
  @override
  void initState() {
    dateinput.text = "";
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  //SEARCH BAR DEMO//
  final List<Map<String, dynamic>> _allUsers = [
    {"name": "Math"},
    {"name": "Algebra"},
    {"name": "Algebra 2"},
    {
      "name": "AP Math",
    },
    {
      "name": "Discrete -Math",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results.clear();
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/Logo for Mobile 1.png"),
              )),
            ),
            SizedBox(width: 70.w),
            Expanded(
              child: Container(
                height: 30.h,
                width: 30.w,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(width: 0.9.w, color: Colors.grey)),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: dropdownvalue,
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: const Icon(FontAwesomeIcons.angleDown),
                      ),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          ),
                        );
                      }).toList(),
                      onChanged: (String NewValue) {
                        setState(() {
                          dropdownvalue = NewValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            const Center(
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage("assets/images/userprofileimage.png")),
            )
          ],
        ),
      ),
      body: ListView(children: [
        Demo(),
       SizedBox(height: 10.h),
        CustomStepper(
          index: _currentIndex,
        ),
        IndexedStack(
          index: _currentIndex,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 180.w, top: 15.h, left: 15.w),
                  child: Text(
                    "I need help with:",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                    width: 1.sw,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: TextField(
                        onChanged: (value) => _runFilter(value),
                        controller: _textfiledcontroller,
                        decoration: InputDecoration(
                            hintText: "Search  Subjects/Topics",
                            border: const OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search, size: 25.sp)))),
                if (_foundUsers.isEmpty)
                  const Text("")
                else if (_foundUsers.isNotEmpty)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _foundUsers.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(_foundUsers[index]["name"]),
                      child: ListTile(
                        title: Text(_foundUsers[index]['name']),
                      ),
                    ),
                  )
                else
                  Text(
                    'No results found',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                SizedBox(
                  height: 100.h,
                ),
                FlatButton(
                  onPressed: () {
                    _currentIndex = 1;
                    setState(() {});
                  },
                  child: const Text(
                    "GO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minWidth: 320.w,
                  height: 50.h,
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(right: 148.w),
                  child: Text(
                    "Type Your Question",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 100.h,
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FontAwesomeIcons.paperclip,
                            size: 15.sp,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text("Attch Files")
                        ],
                      ),
                      height: 45.h,
                      minWidth: 30.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side:
                              const BorderSide(color: Colors.grey, width: 0.9)),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.camera,
                            color: Colors.blue,
                            size: 15.sp,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text("Take Photo")
                        ],
                      ),
                      height: 45.h,
                      minWidth: 15.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side:
                              const BorderSide(color: Colors.grey, width: 0.9)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                FlatButton(
                  onPressed: () {
                    _currentIndex = 2;
                    setState(() {});
                  },
                  child: const Text(
                    "NEXT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: 320.w,
                  height: 50.h,
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right:90.w, left:10.w),
                  child: Text(
                    "When do you need this completed?",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          controller: dateinput,
                          decoration: const InputDecoration(
                            hintText: "Select Date",
                            suffixIcon: Icon(
                              FontAwesomeIcons.calendarAlt,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          onTap: () async {
                            DateTime pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('dd-MM-yyyy').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        readOnly: true,
                        controller: timeinput,
                        decoration: const InputDecoration(
                          hintText: "Select Time",
                          suffixIcon: Icon(
                            FontAwesomeIcons.solidClock,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        onTap: () async {
                          TimeOfDay pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context)); //output 10:51 PM
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            //converting to DateTime so that we can further format on different pattern.
                            print(parsedTime); //output 1970-01-01 22:53:00.000
                            String formattedTime =
                                DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime); //output 14:59:00
                            //DateFormat() is from intl package, you can format the time on any pattern you need.

                            setState(() {
                              timeinput.text =
                                  formattedTime; //set the value of text field.
                            });
                          } else {
                            print("Time is not selected");
                          }
                        },
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                FlatButton(
                  onPressed: () {
                    _currentIndex = 3;
                    setState(() {});
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue,
                  minWidth: 320.w,
                  height: 50.h,
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height:25.h,
                ),
                Padding(
                  padding:EdgeInsets.only(right: 220.w),
                  child: Text(
                    "Price Range",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5.h, right: 25.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          //hint:Text("Select Items"),
                          isExpanded: true,
                          value: drpdwnvalue,
                          icon: const Icon(FontAwesomeIcons.angleDown),
                          items: itmes.map((String itmes) {
                            return DropdownMenuItem(
                              value: itmes,
                              child: Text(itmes),
                            );
                          }).toList(),
                          onChanged: (String NewValue) {
                            setState(() {
                              drpdwnvalue = NewValue;
                            });
                          },
                        ),
                      ),
                    ),
                    width: 320.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        color: Colors.grey.shade200),
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AllRequestPage()));
                  },
                  child: const Text(
                    "Post Request",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.blue,
                  height: 50.h,
                  minWidth: 320.w,
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
