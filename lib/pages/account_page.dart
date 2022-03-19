import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/constants/palette.dart';
import 'package:tutor_eye_app/pages/wallet_page.dart';
import 'package:tutor_eye_app/pages/widget/background.dart';
import 'package:tutor_eye_app/router/router.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Background(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60.h),
                  child: Container(
                    height: 60.h,
                    width: 60.w,
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
                  height: 10.h,
                ),
                Text(
                  "Mahmud Nik",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    color: Palette.blueColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("profilePage");
                    },
                    child: Text(
                      "View Profile",
                      style: TextStyle(fontSize: 10.sp, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("walletPage");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Palette.blueColor.withOpacity(0.1)),
                        child: Image.asset("assets/images/empty-wallet.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wallet",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Plans,Credits,Payments,etc.",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Palette.inputHintColor.withOpacity(0.5)),
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          splashRadius: 25,
                          onPressed: () {
                            Navigator.of(context).pushNamed("walletPage");
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Palette.inputHintColor.withOpacity(0.5),
                            size: 18.sp,
                          )),
                      SizedBox(width: 15.w)
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 5.h,
                  indent: 20.w,
                  endIndent: 20.w,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palette.blueColor.withOpacity(0.1)),
                      child: Image.asset("assets/images/Vector.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Help & Support",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Plans,Credits,Payments,etc.",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Palette.inputHintColor.withOpacity(0.5)),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        splashRadius: 25,
                        onPressed: () {
                          Navigate.to(const WalletPage());
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Palette.inputHintColor.withOpacity(0.5),
                          size: 18.sp,
                        )),
                    SizedBox(width: 15.w)
                  ],
                ),
                Divider(
                  thickness: 1,
                  height: 5.h,
                  indent: 20.w,
                  endIndent: 20.w,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palette.blueColor.withOpacity(0.1)),
                      child: Image.asset("assets/images/setting.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Plans,Credits,Payments,etc.",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Palette.inputHintColor.withOpacity(0.5)),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        splashRadius: 25,
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Palette.inputHintColor.withOpacity(0.5),
                          size: 18.sp,
                        )),
                    SizedBox(width: 15.w)
                  ],
                ),
                Divider(
                  thickness: 1,
                  height: 5.h,
                  indent: 20.w,
                  endIndent: 20.w,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palette.blueColor.withOpacity(0.1)),
                      child: Image.asset("assets/images/logout.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Plans,Credits,Payments,etc.",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Palette.inputHintColor.withOpacity(0.5)),
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        splashRadius: 25,
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Palette.inputHintColor.withOpacity(0.5),
                          size: 18.sp,
                        )),
                    SizedBox(width: 15.w)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
