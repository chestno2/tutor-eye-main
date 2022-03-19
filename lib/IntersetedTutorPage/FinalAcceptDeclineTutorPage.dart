import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_eye_app/ChatPage/ChatProfilePAge.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/IntersetedTutorPage/TutorAwaitedPage.dart';

class FinalTutorPage extends StatefulWidget {
  const FinalTutorPage({Key key}) : super(key: key);

  @override
  _FinalTutorPageState createState() => _FinalTutorPageState();
}

class _FinalTutorPageState extends State<FinalTutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TutorAwaitedPage()));
            },
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.black,
            ),
            iconSize: 18.sp,
          ),
          actions: [
            PopupMenuButton(
              icon: Icon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.black,
                size: 20.sp,
              ),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("First"),
                  value: 1,
                ),
                const PopupMenuItem(
                  child: Text("Second"),
                  value: 2,
                )
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 1,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "WR-15544",
                          style: TextStyle(
                              color: Palette.inputHintColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Proxima"),
                        ),
                        Text("Status",
                            style: TextStyle(
                                color: Palette.inputBorderColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Proxima"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "5 min ago",
                          style: TextStyle(
                              color: Palette.Textcolor, fontSize: 10.sp,fontWeight: FontWeight.bold,fontFamily: "Proxima"),
                        ),
                        Text(
                          "Awaited",
                          style: TextStyle(
                              color: Palette.Awaited, fontFamily: "Proxima",fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Icon(
                      FontAwesomeIcons.angleDoubleDown,
                      color: Palette.Textcolor,
                      size: 18.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 80.w),
                  child: Text(
                    "Interested Tutor",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold,fontFamily: "Proxima"),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.blue.shade100),
                      height: 25.h,
                      width: 90.w,
                      child: Center(
                          child: Text(
                        "Total:18",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,fontFamily: "Proxima"),
                      )),
                    )),
              ],
            ),
            SizedBox(height: 10.h),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              elevation: 1,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, top: 10.h),
                        child: Image.asset("assets/images/awaited3.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              "Cari S.",
                              style: TextStyle(
                                  color:Palette.upgardeplan,fontWeight: FontWeight.bold, fontSize: 12.sp,fontFamily: "Proxima"),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: Image.asset("assets/images/star.png")),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text(
                                  "4.5/5",
                                  style: TextStyle(
                                      color: Palette.Textcolor,
                                      fontSize: 10.sp),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h),
                    child: RichText(
                        text: const TextSpan(
                            text: "Hii Chris,\n",
                            style: TextStyle(color: Palette.inputBorderColor,),
                            children: [
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do",
                            style: TextStyle(color: Palette.inputBorderColor,),
                          ),
                          TextSpan(
                              text:
                                  "eiusmod tempor incidident ut labore et solore magna aliqua",
                              style:
                                  TextStyle(color: Palette.inputBorderColor,)),
                          TextSpan(
                              text: "Read More",
                              style: TextStyle(color: Colors.blue,))
                        ])),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200.w),
                    child: FlatButton(
                        onPressed: () {},
                        child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          child: Center(
                              child: Text(
                            "Chat",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          )),
                        )),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 15.h),
                        child: Image.asset("assets/images/smitprofile.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h, left: 10.w),
                            child: Text(
                              "Smith j.",
                              style: TextStyle(
                                  color: Palette.upgardeplan, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: Image.asset("assets/images/star.png")),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text(
                                  "4.5/5",
                                  style: TextStyle(
                                      color: Palette.Textcolor,
                                      fontSize: 10.sp),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Milestone",
                            style: TextStyle(
                                color: Palette.inputBorderColor,
                                fontSize: 12.sp,fontWeight: FontWeight.bold,fontFamily: "Proxima")),
                        Text("Proposal Deadline",
                            style: TextStyle(
                                color: Palette.inputBorderColor,
                                fontSize: 12.sp,fontWeight: FontWeight.bold,fontFamily: "Proxima")),
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold,fontFamily: "Proxima"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("3 Milestone",
                            style: TextStyle(
                                color: Palette.inputHintColor,
                                fontSize: 12.sp,fontWeight: FontWeight.bold)),
                        Text("02:am,19 Aug2021",
                            style: TextStyle(
                                color: Palette.inputHintColor,
                                fontSize: 12.sp,fontWeight: FontWeight.bold)),
                        Text("\$18.00",
                            style: TextStyle(
                                color: Palette.inputHintColor, fontSize: 12.sp,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 12.h),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 0.3),
                                  borderRadius: BorderRadius.circular(7.r)),
                              child: Center(
                                  child: Text(
                                "Decline",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )),
                            )),
                      ),
                      Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 12.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.r),
                                  color: Colors.green),
                              child: Center(
                                  child: Text(
                                "Accept",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            )),
                      ),
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ChatProfile()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.w, vertical: 12.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.r),
                                  color: Colors.blue),
                              child: Center(
                                  child: Text(
                                "Chat",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 70.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
