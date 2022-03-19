import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/forgotPassword.dart';
import 'package:tutor_eye_app/AuthPages/signUpScreen.dart';
import 'package:tutor_eye_app/pages/widget/bottom_navigation_bar.dart';
//import 'package:awesomeness.dart';

// ignore: use_key_in_widget_constructors
class EmailLogin extends StatefulWidget {
  //const EmailLogin({Key? key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  //final TextEditingController _textEditingController = TextEditingController();
  bool _isobscure = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Image.asset('assets/images/arrow-left.png'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height-150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const Text(
                      'Login to TutorEye',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,
                    ),

                    Flexible(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 54,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF7F8F8),
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(color: const Color(0x143A4853)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.black,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Container(
                                      padding: const EdgeInsets.all(12),
                                      child: Image.asset(
                                        'assets/images/sms2.png',
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.mail_outline_rounded,
                                    //   color: Color(0x9f292D32),
                                    // ),
                                    //prefixIconColor: Color(0xff292D32),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 54,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF7F8F8),
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(color: const Color(0x143A4853)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: TextField(
                                  //controller: _textEditingController,
                                  cursorColor: Colors.black,
                                  textAlignVertical: TextAlignVertical.center,
                                  obscureText: _isobscure,
                                  //obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Container(
                                      padding: const EdgeInsets.all(12),
                                      child: Image.asset(
                                        'assets/images/lock.png',
                                      ),
                                    ),
                                    // const Icon(
                                    //   Icons.lock_outline_rounded,
                                    //   color: Color(0x9f292D32),
                                    //),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isobscure = !_isobscure;
                                          });
                                          //_textEditingController.
                                        },
                                        splashColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: _isobscure ? Colors.black : pBlue,
                                        )),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ForgotPassword(),
                                        type: PageTransitionType.rightToLeft));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: pBlue,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const BottomNav(),
                                      type: PageTransitionType.rightToLeft));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(pBlue),
                            ),
                            child: const SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.05,
                          ),

                        ],
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const SignUp(),
                                      type: PageTransitionType.rightToLeft));
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    side: const BorderSide(color: pBlue, width: 2.0)),
                              ),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(0.0),
                            ),
                            child: SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Center(
                                child: RichText(
                                  text: const TextSpan(
                                      text: "Don't have an account yet? ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Sign Up',
                                          style: TextStyle(
                                            color: pBlue,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
