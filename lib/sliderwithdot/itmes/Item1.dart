
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';
class Item1 extends StatefulWidget {
  const Item1({Key key}) : super(key: key);

  @override
  _Item1State createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:0.h,horizontal:10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Palette.upgardeplan,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding:EdgeInsets.only(bottom:32.h),
            child: Image.asset(
              "assets/images/tumb.png",alignment: Alignment.centerLeft,
              height: 32.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10.h,),
              RichText(
                  maxLines: 2,
                  text: TextSpan(children: [
                     TextSpan(
                        text: "Try our best value plan",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                        text: " Topper\n",
                        style: TextStyle(color: Colors.yellow.shade600)),
                     TextSpan(
                        text: " with",
                        style: TextStyle(color: Colors.white,fontSize: 12.sp)),
                    TextSpan(
                        text: " 299.99",
                        style: TextStyle(color: Colors.yellow.shade600)),
                     TextSpan(
                        text: " only",
                        style: TextStyle(color: Colors.white)),
                  ])),
              // SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(right:35.w,top:10.h,bottom:5.h),
                child: FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    "Upgrade Plan",
                    style: TextStyle(color: Palette.upgardeplan,fontSize: 12.sp,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
