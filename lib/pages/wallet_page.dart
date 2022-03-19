import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';
import 'package:tutor_eye_app/pages/pageView/your_plan.dart';
import 'package:tutor_eye_app/pages/plan_pages/add_credits_page.dart';
import 'package:tutor_eye_app/router/router.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.backgroundColor,
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: Text(
              "Wallet",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/");
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Column(
            children: [
              Container(
                height: 180.h,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Palette.backgroundColor),
                child: Column(
                  children: [
                    Card(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      elevation: 0,
                      color: Palette.blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        Palette.shadowColor.withOpacity(0.3)),
                                child: Image.asset(
                                    "assets/images/wallet-check.png"),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Palette.inputBorderColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: '\$00.00  ',
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: Palette.inputBorderColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '   USD',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Palette.inputBorderColor,
                                        ),
                                      )
                                    ]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      height: 40.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: TextButton(
                        onPressed: () {
                          Navigate.to(const CreditPage());
                        },
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Add Credits",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const TabBar(
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "YOUR PLAN",
                  ),
                  Tab(
                    text: "SAVE CARDS",
                  ),
                  Tab(
                    text: "PAYMENT HISTORY",
                  ),
                ],
                isScrollable: true,
                labelColor: Colors.blue,
              ),
              Expanded(
                child: TabBarView(children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/emoji-sad.png"),
                        SizedBox(
                          height: 20.h,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "You don't have any\t\n",
                              style: TextStyle(
                                  color:
                                      Palette.inputHintColor.withOpacity(0.6),
                                  fontSize: 20.sp)),
                          TextSpan(
                              text: "activated plan",
                              style: TextStyle(
                                  color:
                                      Palette.inputHintColor.withOpacity(0.6),
                                  fontSize: 20.sp))
                        ])),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 40.w, vertical: 10.h),
                          height: 50.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Palette.backgroundColor,
                              borderRadius: BorderRadius.circular(7)),
                          child: Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                  onPressed: () {
                                    Navigate.to(const YourPlanPage());
                                  },
                                  child: const Text(
                                    "Choose Your Plan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text("2"),
                  ),
                  const Center(
                    child: Text("3"),
                  ),
                ]),
              ),
            ],
          )),
    );
  }
}
