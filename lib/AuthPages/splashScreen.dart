import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/knowBetterScreen.dart';
import 'package:tutor_eye_app/AuthPages/loginScreen.dart';
import 'package:tutor_eye_app/AuthPages/services.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    void showMessage(String message) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Error"),
              content: Text(message),
              actions: [
                TextButton(
                  child: const Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //main centre logo
              // ignore: prefer_const_constructors
              Flexible(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    const Center(
                      child: SizedBox(
                        height: 125,
                        width: 125,
                        child: Image(
                          image: AssetImage('assets/images/Logo 1(1).png'),
                        ),
                      ),
                    ),
                    Center(
                      child: SvgPicture.asset('assets/images/tutoreye copy.svg'),
                    ),
                  ],
                ),
              ),

              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Get Started Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const LoginPage(),
                                type: PageTransitionType.rightToLeft));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(pBlue),
                      ),
                      child: const SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //text line
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(right: 5.0),
                                child: const Divider(
                                  color: Color(0xff9898A1),
                                  thickness: 1,
                                  height: 50,
                                )),
                          ),
                          const SizedBox(
                            height: 15,
                            child: Text(
                              'Or via social media',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xff9898A1),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 5.0),
                                child: const Divider(
                                  color: Color(0xff9898A1),
                                  thickness: 1,
                                  height: 50,
                                )),
                          ),
                        ],
                      ),
                    ),

                    //social media links
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                                color: const Color(0x809898A1), width: 2.0),
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: SvgPicture.asset(
                                'assets/images/4202107_facebook_fb_logo_social_social media_icon.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              isLoading = true;
                            });
                            FirebaseService service = FirebaseService();
                            try {
                              await service.signInwithGoogle();
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const KnowBetter(),
                                      type: PageTransitionType.rightToLeft));
                              //Navigator.pushNamedAndRemoveUntil(context, Constants.homeNavigate, (route) => false);
                            } catch (e) {
                              if (e is FirebaseAuthException) {
                                showMessage(e.message);
                              }
                            }
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0)),
                              border: Border.all(
                                  color: const Color(0x809898A1), width: 2.0),
                              color: Colors.transparent,
                            ),
                            child: !isLoading
                                ? Padding(
                                  padding: const EdgeInsets.all(7.5),
                                  child: SvgPicture.asset(
                                      'assets/images/Google__G__Logo.svg'),
                                )
                                : const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 9.0, horizontal: 36.0),
                                    child: CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                pBlue)),
                                  ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                                color: const Color(0x809898A1), width: 2.0),
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Image.asset('assets/images/icons8-linkedin-a-business-and-employment-oriented-service-mobile-app-96.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
