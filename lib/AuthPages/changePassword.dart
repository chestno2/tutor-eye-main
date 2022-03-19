import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'loginScreen.dart';
// ignore: use_key_in_widget_constructors
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  //final TextEditingController _textEditingController = TextEditingController();
  bool _isobscure = true;
  bool _isobscure1 = true;
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
                      'Change Password',
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
                            'Enter New Password',
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
                          const Text(
                            'Confirm Password',
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
                                  obscureText: _isobscure1,
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
                                            _isobscure1 = !_isobscure1;
                                          });
                                          //_textEditingController.
                                        },
                                        splashColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: _isobscure1 ? Colors.black : pBlue,
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
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.02,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                  child: LoginPage(),
                                  type:
                                  PageTransitionType.rightToLeft,
                                ),
                                ModalRoute.withName('/'),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(pBlue),
                            ),
                            child: const SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.02,
                          ),

                        ],
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(),
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
