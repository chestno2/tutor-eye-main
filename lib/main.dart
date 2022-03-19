import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/AuthPages/splashScreen.dart';
import 'package:tutor_eye_app/SplashScreen/SplashScreen.dart';
import 'package:tutor_eye_app/pages/profile_page.dart';
import 'package:tutor_eye_app/pages/upgrade_plan.dart';
import 'package:tutor_eye_app/pages/wallet_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static GlobalKey<NavigatorState> materialNavKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: materialNavKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      routes: {
        "upgradeplan": (context) => const UpgradePage(),
        "profilePage": (context) => const ProfilePage(),
        "walletPage": (context) => const WalletPage(),
      },
      builder: (_, child) => ScreenUtilInit(builder: () {
        return child;
      }),
      home: const FirstPage_SplashScreen(),
    );
  }
}
