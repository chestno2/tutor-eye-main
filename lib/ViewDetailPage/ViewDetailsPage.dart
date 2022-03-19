import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_eye_app/AwaitPage/AwaitPage.dart';
import 'package:tutor_eye_app/FixFiles/DrawHorizontalLine/DrawHorizontalLine.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/SmithAssignedPage/SmithAssignedPage.dart';

class ViewDetailsPage extends StatefulWidget {
  const ViewDetailsPage({Key key}) : super(key: key);

  @override
  _ViewDetailsPageState createState() => _ViewDetailsPageState();
}

class _ViewDetailsPageState extends State<ViewDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: (){},
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          iconSize: 18.sp,
        ),
          actions: [
            PopupMenuButton(icon: Icon(FontAwesomeIcons.ellipsisV,color: Colors.black,size:20.sp,),
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
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:15.h,left: 20.w,right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "WR-15544",
                    style: TextStyle(
                        color: Palette.inputHintColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                   Text("Status",style: TextStyle(fontSize: 12.sp,fontFamily: "Proxima",color: Palette.inputBorderColor,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w,left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 min ago",
                    style: TextStyle(color: Palette.Textcolor, fontSize: 10.sp,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hired",
                    style: TextStyle(color: Colors.green.shade400,fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: InkWell(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SmithAssignedPage()));
                },
                child: Icon(
                  FontAwesomeIcons.angleDoubleDown,
                  color: Palette.Textcolor,
                  size: 18.sp,
                ),
              ),
            ),
            SizedBox(height: 12.h),
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
                    padding: EdgeInsets.only(right: 200.w, top: 12.h),
                    child: const Text(
                      "Assigned Tutor",
                      style: TextStyle(color: Palette.inputBorderColor,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left:20.w),
                        child: Image.asset("assets/images/smitprofile.png"),
                      ),
                      Padding(
                        padding:EdgeInsets.only(right:170.w),
                        child: Column(
                          children: [
                            Text(
                              "Smith j.",
                              style: TextStyle(
                                  color: Palette.inputHintColor, fontSize: 12.sp,fontWeight: FontWeight.bold),
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
                      ),
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
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                    padding:EdgeInsets.symmetric(horizontal: 20.w),
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
                padding: EdgeInsets.only(right: 225.w, top: 12.h),
                child: Text(
                  "Milestones",
                  style: TextStyle(fontSize: 20.sp, color:Palette.upgardeplan,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.green.shade400),
                    color: Colors.grey.shade200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Chapter 1",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 10.w),
                            onPressed: _ShowDialog,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical:8.h,horizontal: 10.w),

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Colors.green),
                              child: const Center(
                                  child: Text(
                                "View Details",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              )),
                            ))
                      ],
                    ),
                    SizedBox(height:10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Proposal Deadline",
                            style: TextStyle(
                                color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("02:am,17 Aug2021"),
                        const Text("\$05.00")
                      ],
                    ),
                    SizedBox(height: 10.h,)
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.shade200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h,),
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
                                color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("02:am,18 Aug2021"),
                        const Text("\$05.00")
                      ],
                    ),
                    SizedBox(height: 10.h,)
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.shade200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
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
                                color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold)),
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Palette.inputBorderColor, fontSize: 12.sp,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("02:am,19 Aug2021"),
                        const Text("\$08.00")
                      ],
                    ),
                    SizedBox(height: 10.h,)
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget _ShowDialog() {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return const AwaitPage();
        });
  }
}
