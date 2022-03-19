import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/IntersetedTutorPage/TutorAwaitedPage.dart';
import 'package:tutor_eye_app/NavigateFiles/router.dart';
import 'package:tutor_eye_app/constants/palette.dart';

class AllRequestPage extends StatefulWidget {
  const AllRequestPage({Key key}) : super(key: key);

  @override
  _AllRequestPageState createState() => _AllRequestPageState();
}

class _AllRequestPageState extends State<AllRequestPage>
    with SingleTickerProviderStateMixin {
  int _selected = 0;
  final _list = ["ACTIVE", "HIRED", "COMPLETED", "CANCEL"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _list.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.1),
        centerTitle: true,
        title: Text(
          "All Requests",
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Palette.cardColor,
                borderRadius: BorderRadius.circular(7)),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "ACTIVE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.white.withOpacity(0.2),
                  indent: 7.h,
                  endIndent: 7.h,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "HIRED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.white.withOpacity(0.2),
                  indent: 7.h,
                  endIndent: 7.h,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "32",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "COMPLETED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Container(
                          height: 10.h,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: _selected == index
                                ? Colors.blue
                                : Palette.buttonTabColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            child: Text(
                              _list[index],
                              style: TextStyle(
                                  color: _selected == index
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                            onPressed: () {
                              _tabController.index = index;
                              _selected = index;
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    },
                    itemCount: _list.length,
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigate.to(const TutorAwaitedPage());
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 150.w,
                                                top: 20.h,
                                                left: 15.w),
                                            child: Text(
                                              "WR-15544",
                                              style: TextStyle(
                                                  color: Palette.cardColor,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20.h, right: 20.w),
                                            child: const Text(
                                              "Status",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "5 min ago",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.w),
                                            child: const Text(
                                              "Awaited",
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w,
                                            right: 20.w,
                                            top: 20.h,
                                            bottom: 20.h),
                                        child: RichText(
                                            text: const TextSpan(
                                                text:
                                                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do",
                                                style: TextStyle(
                                                    color:
                                                        Palette.greyFontColor),
                                                children: [
                                              TextSpan(
                                                  text:
                                                      "eiusmod tempor incidident ut labore et solore magna aliqua",
                                                  style: TextStyle(
                                                      color: Palette
                                                          .greyFontColor)),
                                              TextSpan(
                                                  text:
                                                      "ut enim ad minim veniam",
                                                  style: TextStyle(
                                                      color: Palette
                                                          .greyFontColor))
                                            ])),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 25.w),
                                            child: Text(
                                              "Subject",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 20.w),
                                            child: Text(
                                              "Grade",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 80.h),
                                            child: Text("Time & Date",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        Palette.greyFontColor,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "Maths",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.fontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "Elementary",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.fontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text("02:00pm,12 sept,2021",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Palette.fontColor,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 25.w),
                                            child: const Text(
                                              "Interested Tutors",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 120.w),
                                            child: const Text(
                                              "Budget",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
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
                                            margin: EdgeInsets.only(
                                                right: 10.w, left: 20.w),
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
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 80.w),
                                            child: Text(
                                              "\$200-\$300",
                                              style: TextStyle(
                                                  color: Palette.fontColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child:  Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigate.to(const TutorAwaitedPage());
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 150.w,
                                                top: 20.h,
                                                left: 15.w),
                                            child: Text(
                                              "WR-15544",
                                              style: TextStyle(
                                                  color: Palette.cardColor,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20.h, right: 20.w),
                                            child: const Text(
                                              "Status",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "5 min ago",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(right: 15.w),
                                            child: const Text(
                                              "Awaited",
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w,
                                            right: 20.w,
                                            top: 20.h,
                                            bottom: 20.h),
                                        child: RichText(
                                            text: const TextSpan(
                                                text:
                                                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do",
                                                style: TextStyle(
                                                    color:
                                                    Palette.greyFontColor),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                      "eiusmod tempor incidident ut labore et solore magna aliqua",
                                                      style: TextStyle(
                                                          color: Palette
                                                              .greyFontColor)),
                                                  TextSpan(
                                                      text:
                                                      "ut enim ad minim veniam",
                                                      style: TextStyle(
                                                          color: Palette
                                                              .greyFontColor))
                                                ])),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 25.w),
                                            child: Text(
                                              "Subject",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(right: 20.w),
                                            child: Text(
                                              "Grade",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(right: 80.h),
                                            child: Text("Time & Date",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                    Palette.greyFontColor,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "Maths",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.fontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "Elementary",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Palette.fontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text("02:00pm,12 sept,2021",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Palette.fontColor,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 25.w),
                                            child: const Text(
                                              "Interested Tutors",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 120.w),
                                            child: const Text(
                                              "Budget",
                                              style: TextStyle(
                                                  color: Palette.greyFontColor,
                                                  fontWeight: FontWeight.bold),
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
                                            margin: EdgeInsets.only(
                                                right: 10.w, left: 20.w),
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
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 80.w),
                                            child: Text(
                                              "\$200-\$300",
                                              style: TextStyle(
                                                  color: Palette.fontColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Center(child: Text("HIRED")),
                      const Center(child: Text("COMPLETED")),
                      const Center(child: Text("CANCEL")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
