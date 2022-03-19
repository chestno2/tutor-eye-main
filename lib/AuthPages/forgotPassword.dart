import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/forgotPassOTPVerification.dart';

// ignore: use_key_in_widget_constructors
class ForgotPassword extends StatefulWidget {
  //const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _clicked = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();

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
                      'Forgot Password?',
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
                              height: MediaQuery.of(context).size.height*0.0,
                            ),
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
                                    controller: _textEditingController,
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

                            const SizedBox(
                              height: 30,
                              child: Text(
                                'We will send you an OTP on this email',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9898A1),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  _clicked = true;
                                });
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ForgotPassVerify(
                                            _textEditingController.text),
                                        type: PageTransitionType
                                            .rightToLeft))
                                    .then((value) => setState(() {
                                  _clicked = false;
                                }));
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

                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.0,
                            ),

                          ],
                        ),
                      ),
                    ),

                    Flexible(flex:5,child: Container(),),
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

// Future<bool> sendOTP(String no) async {
//   String _uri = "https://stage.tutoreye.com/api/sendAuthCode";
//   //var url= Uri.parse(_url);
//
//   http.Response otpResponse =
//   await http.post(Uri.parse(_uri), headers: headers, body: {
//     'mobile_number': no,
//   });
//   //print(otpResponse.statusCode);
//   if (otpResponse.statusCode == 200) {
//     return true;
//   } else {
//     return false;
//   }
// }

