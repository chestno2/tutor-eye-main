import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_eye_app/AwaitPage/AwaitPage.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/IntersetedTutorPage/FinalAcceptDeclineTutorPage.dart';
import 'package:tutor_eye_app/pages/pageView/all_request_page.dart';

class TutorAwaitedPage extends StatefulWidget {
  const TutorAwaitedPage({Key key}) : super(key: key);

  @override
  _TutorAwaitedPageState createState() => _TutorAwaitedPageState();
}

class _TutorAwaitedPageState extends State<TutorAwaitedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AllRequestPage()));
            },
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
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(right:150.w, top: 20.h, left: 15.w),
                          child: Text(
                            "WR-15544",
                            style: TextStyle(
                                color: Palette.inputHintColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, right: 15.w),
                          child: Text("Status",
                            style: TextStyle(
                                color: Palette.inputBorderColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "5 min ago",
                            style: TextStyle(
                                color: Palette.Textcolor, fontSize: 10.sp,fontWeight: FontWeight.bold),
                          ),
                           Text(
                            "Awaited",
                            style: TextStyle(color:Palette.Awaited,fontWeight: FontWeight.bold,fontFamily: "Proxima", fontSize: 14.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding:EdgeInsets.only(right:40.w),
                      child: Text("Loreum ipsum dolor sit amet,consectetur adipiscing\nelit,sed doeiusmod tempor incident ut labore et\nsolore magna aliquaut enium ad minim veniam",style: TextStyle(fontSize: 12.sp,fontFamily: "Proxima",color: Palette.inputHintColor),),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subject",
                            style: TextStyle(
                                fontSize: 12.sp, color: Palette.inputBorderColor,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding:EdgeInsets.only(right:42.w),
                            child: Text(
                              "Grade",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Palette.inputBorderColor,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(right: 50.w),
                            child: Text("Time & Date",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Palette.inputBorderColor,fontFamily: "Proxima",fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Maths",
                            style: TextStyle(
                                fontSize: 12.sp, color: Palette.inputHintColor,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Elementary",
                            style: TextStyle(
                                fontSize: 12.sp, color: Palette.inputHintColor,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                          ),
                          Text("02:00pm,12 sept,2021",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Palette.inputHintColor,fontFamily: "Proxima",fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    SizedBox(height:20.h),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.w),
                          child: const Text(
                            "Interested Tutors",
                            style: TextStyle(color: Palette.inputBorderColor,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120.w),
                          child: const Text(
                            "Budget",
                            style: TextStyle(color: Palette.inputBorderColor,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 80.w,
                          margin: EdgeInsets.only(right: 10.w, left: 20.w),
                          child: Stack(
                            children: [
                              Positioned(
                                  child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/awaited1.png")),
                                  top: 0.h,
                                  left: 0.w),
                              Positioned(
                                child: const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/awaited2.png")),
                                top: 0.h,
                                left: 20.w,
                              ),
                              Positioned(
                                child: const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/awaited3.png")),
                                top: 0.h,
                                left: 40.w,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "+15",
                          style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 100.w),
                          child:Text("\$200-\$300",style: TextStyle(fontFamily: "Proxima",color: Palette.upgardeplan,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
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
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const FinalTutorPage()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Icon(
                          FontAwesomeIcons.angleDoubleUp,
                          color: Palette.Textcolor,
                          size: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(height:20.h),
                  ],
                ),
              ),
              SizedBox(height:10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 80.w),
                    child: Text(
                      "Interested Tutor",
                      style:
                          TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.blue.shade100),
                        height: 25.h,
                        width: 90.w,
                        child: Center(
                            child: Text(
                          "Total:18",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        )),
                      )),
                ],
              ),
              SizedBox(height:10.h),
              Card(margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                                    color:Palette.upgardeplan, fontSize: 16.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/images/star.png"),
                                Text(
                                  "4.5/5",
                                  style: TextStyle(
                                      color: Palette.inputBorderColor,
                                      fontSize: 12.sp),
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
                              style: TextStyle(color: Palette.inputBorderColor,fontFamily: "Proxima"),
                              children: [
                            TextSpan(
                              text:
                                  "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do",
                              style: TextStyle(color: Palette.inputBorderColor,fontFamily: "Proxima"),
                            ),
                            TextSpan(
                                text:
                                    "eiusmod tempor incidident ut labore et solore magna aliqua",
                                style: TextStyle(color: Palette.inputBorderColor,fontFamily: "Proxima")),
                            TextSpan(
                                text: "Read More",
                                style: TextStyle(color: Colors.blue,fontFamily: "Proxima"))
                          ])),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200.w),
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Chat",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
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
                          width: 5.w,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15.h, left: 10.w),
                              child: Text(
                                "Smith j.",
                                style: TextStyle(
                                    color:Palette.upgardeplan, fontSize: 12.sp,fontFamily: "Proxima",fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/images/star.png"),
                                Text(
                                  "4.5/5",
                                  style: TextStyle(
                                      color: Palette.Textcolor,
                                      fontSize: 10.sp),
                                )
                              ],
                            ),
                            SizedBox(height:70.h,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
