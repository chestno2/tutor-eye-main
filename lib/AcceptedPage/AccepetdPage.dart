import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_eye_app/FixFiles/DrawHorizontalLine/DrawHorizontalLine.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/SmithAssignedPage/SmithAssignedPage.dart';
import 'package:tutor_eye_app/ViewDetailPage/ViewDetailsPage.dart';


class AcceptedPage extends StatefulWidget {
  const AcceptedPage({Key key}) : super(key: key);

  @override
  _AcceptedPageState createState() => _AcceptedPageState();
}

class _AcceptedPageState extends State<AcceptedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>const ViewDetailsPage()));
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
               const  PopupMenuItem(
                  child: Text("First"),
                  value: 1,
                ),
               const  PopupMenuItem(
                  child: Text("Second"),
                  value: 2,
                )
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical:30.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "WR-15544",
                    style: TextStyle(
                        color: Palette.inputHintColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,fontFamily:"Proxima",),
                  ),
                   Text("Status",style: TextStyle(
                      color: Palette.inputHintColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,fontFamily:"Proxima"),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 min ago",
                    style: TextStyle(color: Palette.Textcolor, fontSize: 10.sp,fontFamily:"Proxima",
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hired",
                    style: TextStyle(color: Colors.green.shade400,fontFamily:"Proxima",
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              InkWell(
                onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SmithAssignedPage())),
                child: Icon(
                  FontAwesomeIcons.angleDoubleDown,
                  color: Palette.Textcolor,
                  size: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                color: Colors.white,
                child: Center(
                  child: CustomPaint(painter: DrawDottedhorizontalline()),
                  //drawing horizontal dotted/dash line
                ),
              ),
              SizedBox(height: 10.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const Text(
                  "Assigned Tutor",
                  style: TextStyle(color: Palette.inputHintColor,fontFamily:"Proxima",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height:5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Image.asset("assets/images/smitprofile.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Smith j.",
                          style: TextStyle(
                              color: Palette.inputHintColor, fontSize: 15.sp,fontFamily:"Proxima",
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/star.png"),
                            Text(
                              "4.5/5",
                              style: TextStyle(
                                  color: Palette.Textcolor, fontSize: 10.sp,fontFamily:"Proxima"),
                            )
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    FlatButton(
                        onPressed: () {},
                        child: Container(
                          height: 30.h,
                          width: 70.w,
                          child: const Center(
                              child: Text(
                            "Chat",
                            style: TextStyle(color: Colors.white,fontFamily:"Proxima",
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.blue),
                        )),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Milestone",
                      style: TextStyle(
                          color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Proposal Deadline",
                      style: TextStyle(
                          color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("Price",
                        style: TextStyle(
                            color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("  3 Milestone",style: TextStyle(fontFamily:"Proxima",fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(" 2:31am ,19 Aug 2021 ",style: TextStyle(fontFamily:"Proxima",fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text("\$18.00",style: TextStyle(fontFamily:"Proxima",fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height:15.h,),
                Text(
                  "Milestones",
                  style: TextStyle(fontSize: 20.sp, color: Palette.upgardeplan,fontFamily:"Proxima",fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.green.shade400),
                      color:Palette.CardColor),
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Chapter 1",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily:"Proxima"),
                          ),

                          FlatButton.icon(
                            icon: Icon(FontAwesomeIcons.checkCircle,
                                size: 12.sp, color: Colors.green.shade400),
                              onPressed: () {},
                            label:Text(
                                "Accepted",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      SizedBox(height:10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Proposal Deadline",
                              style: TextStyle(
                                  color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold)),
                          Text(
                            "Price",
                            style: TextStyle(
                                color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("02:am,17 Aug2021"),
                          const Text("\$05.00")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Palette.CardColor),
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Text(
                                "Chapter 2",
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily:"Proxima"),
                              ),

                          SizedBox(height:25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Proposal Deadline",
                                  style: TextStyle(
                                      color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold)),
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("02:am,18 Aug2021"),
                              const Text("\$05.00")
                            ],
                          )
                        ],
                      ),
                    ),
                SizedBox(height: 20.h),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Palette.CardColor),
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Text(
                                "Chapter 2",
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily:"Proxima"),
                              ),
                          SizedBox(height:25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Proposal Deadline",
                                  style: TextStyle(
                                      color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold)),
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Palette.inputBorderColor, fontSize: 12.sp,fontFamily:"Proxima",fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("02:am,19 Aug2021"),
                              const Text("\$08.00")
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
