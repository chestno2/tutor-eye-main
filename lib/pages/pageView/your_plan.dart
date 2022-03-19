import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';
import 'package:tutor_eye_app/pages/plan_pages/add_credits_page.dart';
import 'package:tutor_eye_app/pages/plan_pages/plan_details.dart';
import 'package:tutor_eye_app/pages/wallet_page.dart';
import 'package:tutor_eye_app/router/router.dart';

class YourPlanPage extends StatefulWidget {
  const YourPlanPage({Key key}) : super(key: key);

  @override
  _YourPlanPageState createState() => _YourPlanPageState();
}

class _YourPlanPageState extends State<YourPlanPage> {
  int index = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.1),
        centerTitle: true,
        title: Text(
          "Plans",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop("walletPage");
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  child: Text(
                    'MONTHLY',
                    style: TextStyle(
                        fontSize: 13.0.sp,
                        color: index == 0 ? Colors.white : Colors.blue),
                  ),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: index == 1 ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue)),
                child: TextButton(
                  child: Text(
                    'YEARLY',
                    style: TextStyle(
                        fontSize: 13.0.sp,
                        color: index == 1 ? Colors.white : Colors.blue),
                  ),
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
              ),
            ],
          ),
          _stackedContainers(),
        ],
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          ListView(
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                elevation: 2,
                color: Palette.backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h,left: 25.w),
                              child: Text(
                                "Pay as you go",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Palette.inputBorderColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h,),
                            child: Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                  color: Palette.blueColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white)),
                              child:
                                  Image.asset("assets/images/right_sign.png"),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Text(
                              "CURRENT PLAN",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Palette.inputBorderColor,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 20.h, left: 30.w),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: '\$0.5/',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Palette.inputBorderColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'minute',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Palette.inputBorderColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ])),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                EdgeInsets.only(right: 10.w, bottom: 20.h),
                            child: Container(
                              height: 30.h,
                              width: 72.w,
                              decoration: BoxDecoration(
                                  color: Palette.blueColor,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  Navigate.to(const CreditPage());
                                },
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                      fontSize: 9.sp, color: Colors.white),
                                ),
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                elevation: 2,
                color: Colors.white.withOpacity(1.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 30.w),
                            child: Text(
                              "Learner",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: Text(
                                "UPGRADE TO",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 20.h, left: 30.w),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: '\$49.99',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '/',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '2 Hours',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ])),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: 10.w, bottom: 20.h),
                            child: Container(
                              height: 30.h,
                              width: 72.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  _showDialog();
                                },
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                elevation: 2,
                color: Colors.white.withOpacity(1.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 30.w),
                            child: Text(
                              "Go Getter",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: Text(
                                "UPGRADE TO",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 20.h, left: 30.w),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: '\$49.99',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '/',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '2 Hours',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ])),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: 10.w, bottom: 20.h),
                            child: Container(
                              height: 30.h,
                              width: 72.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  _showDialog();
                                },
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                elevation: 2,
                color: Colors.white.withOpacity(1.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {
                    _showDialog();
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 30.w),
                              child: Text(
                                "Topper",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 35.w,
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: Text(
                                  "UPGRADE TO",
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: 20.h, left: 30.w),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '\$299.99',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '/',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '20 Hours',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ])),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 10.w, bottom: 20.h),
                              child: Container(
                                height: 30.h,
                                width: 72.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                    child: TextButton(
                                  onPressed: () {
                                    _showDialog();
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                elevation: 2,
                color: Colors.white.withOpacity(1.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {
                    _showDialog();
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 30.w),
                              child: Text(
                                "Topper",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 35.w,
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: Container(
                                height: 15.h,
                                width: 15.h,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: Text(
                                  "UPGRADE TO",
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: 20.h, left: 30.w),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '\$299.99',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '/',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '20 Hours',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ])),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 10.w, bottom: 20.h),
                              child: Container(
                                height: 30.h,
                                width: 72.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                    child: TextButton(
                                  onPressed: () {
                                    _showDialog();
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Center(child: Text("Page 2")),
        ],
      ),
    );
  }

  Widget _showDialog() {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return const PlanDetailsPage();
      },
    );
  }
}
