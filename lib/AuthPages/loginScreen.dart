import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/emailLogin.dart';
import 'package:tutor_eye_app/AuthPages/otpVerification.dart';
import 'package:tutor_eye_app/AuthPages/signUpScreen.dart';
import 'package:tutor_eye_app/pages/widget/bottom_navigation_bar.dart';
import 'package:tutor_eye_app/router/router.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _clicked = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();
  PhoneNumber number1 = PhoneNumber(isoCode: 'IN');

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
                height: MediaQuery.of(context).size.height - 150,
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
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Flexible(
                      flex: 7,
                      child: Form(
                        key: formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.00,
                            ),
                            const Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFF7F8F8),
                                borderRadius: BorderRadius.circular(4.0),
                                border:
                                    Border.all(color: const Color(0x143A4853)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: InternationalPhoneNumberInput(
                                  onInputChanged: (PhoneNumber number) {
                                    number1 = number;
                                  },
                                  autoValidateMode: AutovalidateMode.disabled,
                                  initialValue: number1,
                                  cursorColor: Colors.black,
                                  inputBorder: InputBorder.none,
                                  textFieldController: _textEditingController,
                                  onSaved: (PhoneNumber number) {
                                    number1 = number;
                                  },
                                  // inputDecoration: const InputDecoration(
                                  //   border: OutlineInputBorder(gapPadding: 4.0),
                                  // ),
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  hintText: ' ',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                              child: Text(
                                'We will send you an OTP on this number',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9898A1),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () async
                              {
                                setState(() {
                                  _clicked = true;
                                });
                                formkey.currentState?.save();
                                // if (kDebugMode) {
                                //   print(formkey.currentState?.validate());
                                // }
                                // if (kDebugMode) {
                                //   print(number1.phoneNumber);
                                // }
                                if (formkey.currentState?.validate() == true) {
                                  bool x = await sendOTP(number1.toString());
                                  if (x == true) {
                                    Navigator.push(
                                            context,
                                            PageTransition(
                                                child: OTPVerification(
                                                    number1.toString()),
                                                type: PageTransitionType
                                                    .rightToLeft))
                                        .then((value) => setState(() {
                                              _clicked = false;
                                            }));
                                  }
                                  else{
                                    setState(() {
                                      Fluttertoast.showToast(
                                        msg: "Please try again later",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.grey.shade300,
                                        textColor: Colors.black,
                                        fontSize: 16.0,
                                      );

                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()),
                                        ModalRoute.withName('/'),
                                      );
                                    });
                                  }
                                } else if (formkey.currentState?.validate() ==
                                    false) {
                                  setState(() {
                                    Fluttertoast.showToast(
                                      msg: "Invalid Number",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.grey.shade300,
                                      textColor: Colors.black,
                                      fontSize: 16.0,
                                    );
                                    Navigate.toAndRemoveAll(LoginPage());
                                  });
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(pBlue),
                              ),
                              child: SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: Center(
                                  child: _clicked
                                      ? const SizedBox(
                                          height: 12,
                                          width: 12,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2.0,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      Colors.white)),
                                        )
                                      : const Text(
                                          'Send Verification Code',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                    text: "Don't have any phone number? ",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                    children: [
                                      TextSpan(
                                          //onEnter:,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    child: EmailLogin(),
                                                    type: PageTransitionType
                                                        .rightToLeft,
                                                  ));
                                            },
                                          text: 'Login with Email',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: pBlue,
                                          ))
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigate.to(const SignUp());
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                pBlue.withOpacity(0.2),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    side: const BorderSide(
                                        color: pBlue, width: 2.0)),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(0.0),
                            ),
                            child: const SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: pBlue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
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

Future<bool> sendOTP(String no) async {
  String _uri = "https://stage.tutoreye.com/api/sendAuthCode";
  //var url= Uri.parse(_url);

  http.Response otpResponse =
      await http.post(Uri.parse(_uri), headers: headers, body: {
    'mobile_number': no,
  });
  //print(otpResponse.statusCode);
  if (otpResponse.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

