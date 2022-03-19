import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';
import 'package:tutor_eye_app/pages/pageView/your_plan.dart';
import 'package:tutor_eye_app/router/router.dart';

class CreditPage extends StatefulWidget {
  const CreditPage({Key key}) : super(key: key);

  @override
  _CreditPageState createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.1),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: Text(
              "Add Credits",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigate.close();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210.h,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                  color: Palette.backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25.h),
                  Text(
                    "Your Plan",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Palette.inputBorderColor.withOpacity(0.6),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "PAY AS YOU GO",
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: Palette.inputBorderColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "\$0.5/minute",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Palette.inputBorderColor.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Charges based on above plan:\$0.5/minute",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Palette.inputBorderColor.withOpacity(0.8),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 60.w, vertical: 15.h),
                      height: 35.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'upgradeplan');
                          },
                          child: Text(
                            "Upgrade Plan",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Palette.inputBorderColor,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            const Text(
              "In Amount",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 90.w, vertical: 15.h),
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Palette.backgroundColor.withOpacity(0.1),
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child:TextFormField(initialValue:"\$",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Palette.blackColor.withOpacity(0.8),
                              fontSize: 15.sp,
                          ),
                        decoration: const InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: const VerticalDivider(
                        color: Colors.grey,
                        endIndent: 6,
                        indent: 6,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 25.w),
                        child: TextFormField(initialValue: "321",
                        decoration: const InputDecoration(
                          border: InputBorder.none
                        ),),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        "USD",
                        style: TextStyle(
                            color: Palette.inputHintColor.withOpacity(0.6)),
                      ),
                    )),
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            Image.asset("assets/images/arrow.png"),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "In Minutes",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 90.w, vertical: 15.h),
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Palette.backgroundColor.withOpacity(0.1),
                    border: Border.all(
                        color: Palette.inputHintColor.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: "200",
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 5.w),),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Text(
                        "minutes",
                        style: TextStyle(
                            color: Palette.inputHintColor.withOpacity(0.6)),
                      ),
                    )),
                  ],
                )),
            SizedBox(height: 40.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
              height: 45.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Palette.backgroundColor,
                  borderRadius: BorderRadius.circular(7)),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'upgradeplan');
                  },
                  child: Text(
                    "Add Credits",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
