import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120.w),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                ),
                const Spacer(),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  height: 18.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                            style: TextStyle(
                                color: Palette.blackColor, fontSize: 12.sp,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "Just now",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Palette.blackColor.withOpacity(0.6),
                        ),
                      )),
                  SizedBox(height: 10.w),
                  Divider(thickness: 1,indent: 40.w,endIndent: 30.w),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                            style: TextStyle(
                                color: Palette.blackColor, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "1 hour ago",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Palette.blackColor.withOpacity(0.6),
                        ),
                      )),
                  SizedBox(height: 10.w),
                  Divider(thickness: 1,indent: 40.w,endIndent: 30.w),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                            style: TextStyle(
                                color: Palette.blackColor, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "2 hour ago",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Palette.blackColor.withOpacity(0.6),
                        ),
                      )),
                  SizedBox(height: 10.w),
                  Divider(thickness: 1,indent: 40.w,endIndent: 30.w),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                            style: TextStyle(
                                color: Palette.blackColor, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "3 hour ago",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Palette.blackColor.withOpacity(0.6),
                        ),
                      )),
                  SizedBox(height: 10.w),
                  Divider(thickness: 1,indent: 40.w,endIndent: 30.w),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 7.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                            style: TextStyle(
                                color: Palette.blackColor, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "3 hour ago",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Palette.blackColor.withOpacity(0.6),
                        ),
                      )),
                  SizedBox(height: 10.w),
                  Divider(thickness: 1,indent: 40.w,endIndent: 30.w),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
