import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key key, this.index = 0}) : super(key: key);
  final int index;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final indicatorSize = 40.w;
    final gap = size.width - 60.w;
    return SizedBox(
      width: size.width,
      height: indicatorSize + 5.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size.width,
              height: 1.h,
              alignment: Alignment.centerLeft,
              color: Colors.grey.shade500,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                height: 1.h,
                color: Colors.green,
                width: gap / 3 * widget.index,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: indicatorSize,
                  width: indicatorSize,
                  alignment: Alignment.center,
                  child: widget.index > index
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      : Text("${index + 1}"),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: widget.index == index ? Colors.green : Colors.grey,
                    ),
                    color: widget.index > index ? Colors.green : Colors.white,
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
