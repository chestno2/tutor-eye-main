import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/ChatPage/ChatProfilePAge.dart';
import 'package:tutor_eye_app/FixFiles/DrawHorizontalLine/DrawHorizontalLine.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/ViewDetailPage/ViewDetailsPage.dart';

class SmithAssignedPage extends StatefulWidget {
  const SmithAssignedPage({Key key}) : super(key: key);

  @override
  _SmithAssignedPageState createState() => _SmithAssignedPageState();
}

class _SmithAssignedPageState extends State<SmithAssignedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ChatProfile()));
            },
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.black,
            ),
            iconSize: 18,
          ),
          actions: [
            PopupMenuButton(
              icon: const Icon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.black,
                size: 20,
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "WR-15544",
                    style: TextStyle(
                        color: Palette.upgardeplan,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                    fontFamily: "Proxima"),
                  ),
                  Text(
                    "Status",
                    style: TextStyle(
                        color: Palette.inputBorderColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,fontFamily: "Proxima"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 min ago",
                    style: TextStyle(color: Palette.Textcolor, fontSize: 10.sp),
                  ),
                  Text(
                    "Hired",
                    style: TextStyle(color: Colors.green.shade400),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do\n eiusmod tempor incidident ut labore et solore magna aliqua\n ut enim ad minim veniam",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Proxima",
                    color: Palette.inputBorderColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subject",
                      style:
                          TextStyle(fontSize: 13.sp, color: Palette.Textcolor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:40.w),
                      child: Text(
                        "Grade",
                        style:
                            TextStyle(fontSize: 13.sp, color: Palette.Textcolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 60.w),
                      child: Text("Time & Date",
                          style: TextStyle(
                              fontSize: 13.sp, color: Palette.Textcolor)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Maths",
                      style: TextStyle(
                          fontSize: 13.sp, color: Palette.inputHintColor),
                    ),
                    Text(
                      "Elementary",
                      style: TextStyle(
                          fontSize: 13.sp, color: Palette.inputHintColor),
                    ),
                    Text("02:00pm,12 sept,2021",
                        style: TextStyle(
                            fontSize: 13.sp, color: Palette.inputHintColor))
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    Text(
                      "1 Attachment",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 25.w),
                    Image.asset("assets/images/download.png",
                        height: 20.h, color: Colors.blue),
                    SizedBox(width: 10.w),
                    const Text(
                      "Download Attachment",
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 200),
                      type: PageTransitionType.bottomToTop,
                      child: const ViewDetailsPage(),
                    ),
                  );

                },
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Icon(
                    FontAwesomeIcons.angleDoubleUp,
                    color: Palette.Textcolor,
                    size: 18.sp,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                color: Colors.white,
                 child: Center(
                  child: CustomPaint(painter: DrawDottedhorizontalline()),
                  //drawing horizontal dotted/dash line
                ),
              ),
              Column(
                  children: [
                Padding(
                  padding: EdgeInsets.only(right:200.w, top: 15.h),
                  child: const Text(
                    "Assigned Tutor",
                    style: TextStyle(color: Palette.inputHintColor,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left:10.w),
                      child: Image.asset("assets/images/smitprofile.png"),
                    ),
                    Column(
                      children: [
                        Text(
                          "Smith j.",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 15.sp),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/star.png"),
                            Text(
                              "4.5/5",
                              style: TextStyle(
                                  color: Palette.Textcolor, fontSize: 10.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    FlatButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                          child: const Center(
                              child: Text(
                            "Chat",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.blue),
                        )),
                  ],
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Milestone",
                        style: TextStyle(
                            color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Proposal Deadline",
                        style: TextStyle(
                            color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("Price",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("3 Milestone",style: TextStyle(fontFamily: "Proxima",color: Palette.upgardeplan,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: 10.w,
                      ),
                       Text("2:31am ,19 Aug 2021 ",style: TextStyle(fontFamily: "Proxima",color: Palette.upgardeplan,fontSize: 12.sp,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10.w,
                      ),
                       Text("\$18.00",style: TextStyle(fontFamily: "Proxima",color: Palette.upgardeplan,fontSize: 12.sp,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 225.w, top: 20.h),
                  child: Text(
                    "Milestones",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewDetailsPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Palette.CardColor,border: Border.all(color: Colors.black26,width: 0.3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Text(
                          "Chapter 1",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Proposal Deadline",
                                style: TextStyle(
                                    color: Palette.inputBorderColor,
                                    fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Palette.inputBorderColor,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("02:am,17 Aug2021",
                              style: TextStyle(
                                  color: Palette.upgardeplan,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),),
                             Text("\$05.00",
                              style: TextStyle(
                                  color: Palette.upgardeplan,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Palette.CardColor,border: Border.all(color: Colors.black26,width: 0.3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        "Chapter 2",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Proposal Deadline",
                              style: TextStyle(
                                  color: Palette.inputBorderColor,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                          Text(
                            "Price",
                            style: TextStyle(
                                color: Palette.inputHintColor,
                                fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("02:am,18 Aug2021",
                              style: TextStyle(
                                  color: Palette.upgardeplan,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                           Text("\$05.00",
                              style: TextStyle(
                                  color: Palette.upgardeplan,
                                  fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
