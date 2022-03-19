import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_eye_app/HomePage/HomePage.dart';
import 'package:tutor_eye_app/pages/account_page.dart';
import 'package:tutor_eye_app/pages/notification.dart';
import 'package:tutor_eye_app/pages/pageView/all_request_page.dart';
import 'package:tutor_eye_app/pages/profile_page.dart';
import 'package:tutor_eye_app/pages/upgrade_plan.dart';
import 'package:tutor_eye_app/pages/wallet_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys =
      List.generate(4, (index) => GlobalKey<NavigatorState>());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return WillPopScope(
        child: Scaffold(
          body: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: Colors.black,
            selectedFontSize: 10.sp,
            unselectedFontSize: 10.sp,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/home-2.png", color: Colors.black,), label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/row-vertical.png",
                    color: Colors.black,
                  ),
                  label: "All Request"),
              BottomNavigationBarItem(
                  icon: Stack(
                    children: [
                      Image.asset(
                        "assets/images/notification-bell.png",
                        color: Colors.black,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            height: 10.h,
                            width: 7.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          )),
                    ],
                  ),
                  label: "Notification"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/account.png",
                    color: Colors.black,
                  ),
                  label: "Account"),
            ],
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              _currentIndex = index;
              setState(() {});
            },
          ),
        ),
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[_currentIndex].currentState.maybePop();

          // let system handle back button if we're on the first route
          return isFirstRouteInCurrentTab;
        },
      );
    });
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return const [
          HomePage(),
          AllRequestPage(),
          NotificationPage(),
          AccountPage(),
        ][index];
      },
      'profilePage': (context) => const ProfilePage(),
      'walletPage': (context) => const WalletPage(),
      'upgradeplan': (context) => const UpgradePage(),
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _currentIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          switch (routeSettings.name) {
            case '/':
              return MaterialPageRoute(
                builder: (context) =>
                    routeBuilders[routeSettings.name](context),
              );
            case 'profilePage':
              return MaterialPageRoute(
                builder: (context) =>
                    routeBuilders[routeSettings.name](context),
              );
            case 'walletPage':
              return MaterialPageRoute(
                builder: (context) =>
                    routeBuilders[routeSettings.name](context),
              );
            case 'upgradeplan':
              return MaterialPageRoute(
                builder: (context) =>
                    routeBuilders[routeSettings.name](context),
              );
            default:
              return MaterialPageRoute(
                builder: (context) =>
                    routeBuilders[routeSettings.name](context),
              );
          }
        },
      ),
    );
  }
}
