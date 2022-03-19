import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/constants.dart';
import 'package:tutor_eye_app/AuthPages/loginScreen.dart';
import 'package:tutor_eye_app/HomePage/HomePage.dart';
import 'package:tutor_eye_app/NavigateFiles/router.dart';
import 'package:tutor_eye_app/pages/widget/bottom_navigation_bar.dart';
import 'homeScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _value = 1;

  //final TextEditingController _textEditingController = TextEditingController();
  bool _isobscure = true;
  bool _isnext = false;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _parentemail = TextEditingController();

  String dropdownvalue = 'Grade 6';

  var items = [
    'Grade 6',
    'Grade 7',
    'Grade 8',
    'Grade 9',
    'Grade 10',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
                _isnext == true
                    ? setState(() {
                        _isnext = false;
                      })
                    : Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign up to TutorEye',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Flexible(
                      flex: 7,
                      child: _isnext == true
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "I'm a",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MyRadioListTile<int>(
                                        value: 1,
                                        groupValue: _value,
                                        title: 'Student',
                                        onChanged: (value) =>
                                            setState(() => _value = value),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                    ),
                                    Expanded(
                                      child: MyRadioListTile<int>(
                                        value: 2,
                                        groupValue: _value,
                                        title: 'Parent',
                                        onChanged: (value) =>
                                            setState(() => _value = value),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Select Grade',
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
                                    border: Border.all(
                                        color: const Color(0x143A4853)),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          60,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          elevation: 8,
                                          // Initial Value
                                          value: dropdownvalue,
                                          isExpanded: true,
                                          underline: null,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),

                                          // Down Arrow Icon
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String newValue) {
                                            setState(() {
                                              dropdownvalue = newValue;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Your Parent Email',
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
                                    border: Border.all(
                                        color: const Color(0x143A4853)),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        controller: _parentemail,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        cursorColor: Colors.black,
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
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Full Name',
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
                                    border: Border.all(
                                        color: const Color(0x143A4853)),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextField(
                                        textCapitalization:
                                            TextCapitalization.words,
                                        controller: _name,
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                          hintText: 'John Doe',
                                          hintStyle: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          border: InputBorder.none,
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.all(12),
                                            child: Image.asset(
                                              'assets/images/account.png',
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
                                    border: Border.all(
                                        color: const Color(0x143A4853)),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        controller: _email,
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.center,
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
                                    border: Border.all(
                                        color: const Color(0x143A4853)),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TextField(
                                        controller: _password,
                                        cursorColor: Colors.black,
                                        textAlignVertical:
                                            TextAlignVertical.center,
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
                                                color: _isobscure
                                                    ? Colors.black
                                                    : pBlue,
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
                              ],
                            ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _isnext == true
                                  ? Navigate.to(const LoginPage())
                                  : setState(() {
                                      FocusScopeNode currentFocus =
                                          FocusScope.of(context);

                                      if (!currentFocus.hasPrimaryFocus) {
                                        currentFocus.unfocus();
                                      }

                                      _isnext = !_isnext;
                                    });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(pBlue),
                            ),
                            child: SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: _isnext == true
                                    ? const Center(
                                        child: Text(
                                          'Register',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Next',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                              ),
                            ),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: "Already have an account? ",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            PageTransition(
                                              child: const LoginPage(),
                                              type: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                            ModalRoute.withName('/'),
                                          );
                                        },
                                      text: 'LOGIN',
                                      style: const TextStyle(
                                        color: pBlue,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ]),
                            ),
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

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String title;
  final ValueChanged<T> onChanged;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MyRadioListTile({
    this.value,
    this.groupValue,
    this.onChanged,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    final isSelected = value == groupValue;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => onChanged(value),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8F8),
          borderRadius: BorderRadius.circular(50.0),
          border: isSelected
              ? Border.all(color: pBlue, width: 2.0)
              : Border.all(color: const Color(0x143A4853)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _customRadioButton,
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? pBlue : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding:
          isSelected ? const EdgeInsets.all(6.0) : const EdgeInsets.all(11.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color: isSelected ? Colors.blue : null,
        //borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.black,
          width: isSelected ? 8.0 : 2.0,
        ),
      ),
    );
  }
}
