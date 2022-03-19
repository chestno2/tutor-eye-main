import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
import 'package:tutor_eye_app/IntersetedTutorPage/FinalAcceptDeclineTutorPage.dart';
import 'package:tutor_eye_app/SmithAssignedPage/SmithAssignedPage.dart';

class ChatProfile extends StatefulWidget {
  const ChatProfile({Key key}) : super(key: key);

  @override
  _ChatProfileState createState() => _ChatProfileState();
}

class _ChatProfileState extends State<ChatProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Palette.upgardeplan,
            leading: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FinalTutorPage()));
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/smitprofile.png"),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Text(
                        "Smith j.",
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
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
                                color: Palette.Textcolor, fontSize: 10.sp),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            bottom: const TabBar(
              tabs: [Tab(text: "CHAT"), Tab(text: "PROPOSAL")],
            ),
          ),
          body: TabBarView(
            children: [
              _chat(),
              Column(
                children: [
                  SizedBox(height: 20.h),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(left: 20.w),
                          child: Text(
                              "Hi Mahmud,\nLorem ipsum dolor sit amet,consectetur adipiscing\nelit,sed do eiusmed temper incidident ut labore\net doolore magne aliqua",
                              style: TextStyle(
                                  color: Palette.inputBorderColor,
                                  fontFamily: "Proxima",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
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
                                    color: Palette.inputBorderColor,
                                    fontSize: 12.sp,
                                    fontFamily: "Proxima"),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Proposal Deadline",
                                style: TextStyle(
                                    color: Palette.inputBorderColor,
                                    fontSize: 12.sp,
                                    fontFamily: "Proxima"),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Price",
                                  style: TextStyle(
                                      color: Palette.inputBorderColor,
                                      fontSize: 12.sp,
                                      fontFamily: "Proxima"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3 Milestone",
                                style: TextStyle(
                                    color: Palette.upgardeplan,
                                    fontSize: 12.sp,
                                    fontFamily: "Proxima"),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("2:31am ,19 Aug 2021 ",
                                  style: TextStyle(
                                      color: Palette.upgardeplan,
                                      fontSize: 12.sp,
                                      fontFamily: "Proxima")),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("\$18.00",
                                  style: TextStyle(
                                      color: Palette.upgardeplan,
                                      fontSize: 12.sp,
                                      fontFamily: "Proxima"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 150.w, top: 20.h, left: 20.w),
                          child: Text(
                            "Milestones",
                            style: TextStyle(
                                fontSize: 20.sp, color: Palette.upgardeplan),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color:Palette.CardColor,border: Border.all(color: Colors.black26,width: 0.3)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text(
                                  "Chapter 1",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Text("Proposal Deadline",
                                        style: TextStyle(
                                            color: Palette.inputHintColor,
                                            fontSize: 12.sp)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          color: Palette.inputHintColor,
                                          fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: const Text("02:am,17 Aug2021"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: const Text("\$05.00"),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color:Palette.CardColor,border: Border.all(color: Colors.black26,width: 0.3)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text(
                                  "Chapter 2",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 28.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Text("Proposal Deadline",
                                        style: TextStyle(
                                            color: Palette.inputHintColor,
                                            fontSize: 12.sp)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          color: Palette.inputHintColor,
                                          fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: const Text("02:am,18 Aug2021"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: const Text("\$05.00"),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Palette.CardColor,border: Border.all(color: Colors.black26,width: 0.3)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text(
                                  "Chapter 2",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 28.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Text("Proposal Deadline",
                                        style: TextStyle(
                                            color: Palette.inputHintColor,
                                            fontSize: 12.sp)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          color: Palette.inputHintColor,
                                          fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: const Text("02:am,19 Aug2021"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),
                                    child: const Text("\$08.00"),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: const Center(
                              child: Text(
                            "Decline",
                            style: TextStyle(color: Colors.red),
                          )),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SmithAssignedPage()));
                        },
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.green.shade400),
                          child: const Center(
                              child: Text(
                            "Accept",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

    );
  }

  Widget _chat() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.grey.shade200),
              child: Text(
                "Today",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: "Proxima",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 300.w),
                      child: Text(
                        "7.56",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.h),
                        margin: EdgeInsets.only(left: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.w),
                              bottomRight: Radius.circular(10.w),
                              topRight: Radius.circular(10.h)),
                          color: Palette.upgardeplan,
                        ),
                        child: Text(
                          "Hi Muhmad",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Proxima",
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 300.w),
                      child: Text(
                        "7.55",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          margin: EdgeInsets.only(left: 130.w, right: 10.w),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.w),
                                  bottomRight: Radius.circular(10.w),
                                  topLeft: Radius.circular(10.h)),
                              color: Colors.blue),
                          child: Align(
                            alignment: Alignment.topLeft,
                              child: Text(
                                  "Hi Smith\nHope you got my requirement",),)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child://Image.asset("assets/images/plus.png",width:30.w,height:20.h,fit: BoxFit.contain,)
                       Icon(Icons.add,size:25.sp,
                      //   FontAwesomeIcons.plus,
                      //   size: 18.sp,
                       ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.0.r),
                          bottomLeft: Radius.circular(7.0.r),
                        ),
                        color: Colors.grey.shade100,
                      ),
                      height: 50.h,
                      child: TextFormField(
                        style: TextStyle(fontSize:15.sp,fontFamily: "Proxima",),
                        cursorHeight:30.h,
                        textAlign: TextAlign.center,
                        decoration:InputDecoration(
                            hintText: "Type Here",hintStyle: TextStyle(fontFamily: "Proxima",color:Colors.grey.shade400),
                            suffixIcon: Icon(FontAwesomeIcons.smile,size:25.sp,color: Colors.grey.shade300,),
                            border: InputBorder.none) ,),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Send button");
                    },
                    child: Container(
                      height: 50.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7.0.r),
                          bottomRight: Radius.circular(7.0.r),
                        ),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/send.png")),
                        color: Colors.blue,
                      ),
                      margin: EdgeInsets.only(right: 10.w),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.h)
            ],
          ),
        ),
      ],
    );
  }
}
