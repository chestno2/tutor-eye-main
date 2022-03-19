import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';
import 'account_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _emailFN = FocusNode();
  final _numberFN = FocusNode();
  final _passwordFN = FocusNode();
  final _timeFN = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: 150.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Palette.backgroundColor),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => const AccountPage()));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.h),
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/Ellipse 78.png"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Mahmud Nik",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(height: 20.h),
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      elevation: 0,
                      color: Palette.blueColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Palette.blueColor.withOpacity(0.1)),
                                child: Image.asset("assets/images/sms.png"),
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: "mahmud.nik@dummy.com",style: TextStyle(
                                  decoration: TextDecoration.underline,
                                    fontSize: 12.sp,
                                    color: Palette.blackColor),
                                  focusNode: _emailFN,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                splashRadius: 30,
                                onPressed: () {
                                  _emailFN.requestFocus();
                                },
                                icon: Image.asset("assets/images/penicon.png"),
                              ),
                              SizedBox(width: 10.w)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      elevation: 0,
                      color: Palette.blueColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Palette.blueColor.withOpacity(0.1)),
                                child: Image.asset(
                                    "assets/images/call-calling.png"),
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: "+1 8786 7864",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Palette.blackColor),
                                  focusNode: _numberFN,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                splashRadius: 30,
                                onPressed: () {
                                  _numberFN.requestFocus();
                                },
                                icon: Image.asset("assets/images/penicon.png"),
                              ),
                              SizedBox(width: 10.w)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      elevation: 0,
                      color: Palette.blueColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Palette.blueColor.withOpacity(0.1)),
                                child: Image.asset(
                                    "assets/images/key-square.png"),
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: "Password",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Palette.blackColor),
                                  focusNode: _passwordFN,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                splashRadius: 30,
                                onPressed: () {
                                  _passwordFN.requestFocus();
                                },
                                icon: Image.asset("assets/images/penicon.png"),
                              ),
                              SizedBox(width: 10.w)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      elevation: 0.0,
                      color: Palette.blueColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Palette.blueColor.withOpacity(0.1)),
                                child: Image.asset("assets/images/global.png"),
                              ),
                              Expanded(
                                child: TextFormField(
                                  initialValue: "(UTC+05:30)New Delhi",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Palette.blackColor),
                                  focusNode: _timeFN,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                splashRadius: 30,
                                onPressed: () {
                                  _timeFN.requestFocus();
                                },
                                icon: Image.asset("assets/images/penicon.png"),
                              ),
                              SizedBox(width: 10.w)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
