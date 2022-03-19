import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key key}) : super(key: key);

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final indicatorSize = 25.w;
    return SizedBox(
      width: 1.sw,
      height: indicatorSize,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 2.h,
              width: 1.sw,
              child: AnimatedContainer(

                duration: const Duration(milliseconds: 800),
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return Container(
                  height: indicatorSize,
                  width: indicatorSize,
                  alignment: Alignment.center,
                  child: Text("${index+1}"),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
