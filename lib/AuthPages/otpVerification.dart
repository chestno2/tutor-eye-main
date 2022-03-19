import 'dart:convert';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/signUpScreen.dart';

//ignore: use_key_in_widget_constructors
class OTPVerification extends StatefulWidget {
  String number;
  // ignore: use_key_in_widget_constructors
  @required OTPVerification(this.number);
  //const OTPVerification({Key? key}) : super(key: key);

  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {

  bool _verified = false;
     String _code ;

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
                      'OTP Verification',
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                            child: RichText(
                              text: TextSpan(
                                text: "Enter the OTP Sent on ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: widget.number,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 20.0,
                            child: Text(
                              "OTP",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Flexible(
                                child: OtpTextField(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //margin: const EdgeInsets.only(right: 30.0),
                                  numberOfFields: 6,
                                  //fieldWidth:MediaQuery.of(context).size.width*0.12,
                                  //borderWidth: 2,
                                  focusedBorderColor: Colors.black,
                                  enabledBorderColor: const Color(0x80000000),
                                  cursorColor: Colors.black,
                                  autoFocus: true,
                                  textStyle: const TextStyle(
                                    fontSize: 32,
                                  ),
                                  onSubmit: (String code){
                                          _code = code;
                                  },
                                ),
                              ),
                            ],
                          ),

                          Center(
                            child: RichText(
                              text: const TextSpan(
                                  text: "Didn't Receive the OTP? ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: 'Resend OTP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF56BE81),
                                        ))
                                  ]),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              _verified = await verifyOTP(widget.number, _code);
                              if(_verified == true){
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: SignUp(),
                                        type: PageTransitionType.rightToLeft));
                              }else{
                                Fluttertoast.showToast(
                                  msg: "Invalid OTP",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey.shade300,
                                  textColor: Colors.black,
                                  fontSize: 16.0,
                                );
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  pBlue),
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

                    Flexible(flex:4,child: Container(),),
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

Future<bool> verifyOTP(String no, String code) async{
  String _uri = "https://stage.tutoreye.com/api/verifyPhoneNumber";

  http.Response verifyResponse = await http.post(Uri.parse(_uri), body: {
    'mobile': no,
    'verification_code': code,
  });
  //print(verifyResponse.statusCode);
  if(verifyResponse.statusCode == 200) {
    //print(verifyResponse.body);
    var body = jsonDecode(verifyResponse.body);
    try{
      if(body["success"] == true){
        return true;
      }
    }catch(e){
      if(body["error"]){
        return false;
      }
    }
    return false;
  } else {
    return false;
  }
}
