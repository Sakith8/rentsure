import 'package:flutter/material.dart';
import 'package:rentsure/register/OTP.dart';
import 'package:rentsure/main.dart';

void main() {
  runApp(const MaterialApp(
    home: SigninPage(),
  ));
}

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

const double fem = 1.0;
const double ffem = 1.0;

class _SigninPageState extends State<SigninPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _reenterPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(
              16,
              64.5,
              30,
              28,
            ),
            width: double.infinity,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        0,
                        0,
                        230,
                        77.5,
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        190 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Username',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        15,
                        0,
                        0,
                        20,
                      ),
                      width: 299,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color: _validateUsername(_username) != null
                              ? Colors.red
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _username = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Username',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            return _validateUsername(value!);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        190 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        15,
                        0,
                        0,
                        20,
                      ),
                      width: 299,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color: _validatePassword(_password) != null
                              ? Colors.red
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            return _validatePassword(value!);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        140 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Re-Enter Password',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        15 * fem,
                        0 * fem,
                        0 * fem,
                        20 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color:
                              _validateReenterPassword(_reenterPassword) != null
                                  ? Colors.red
                                  : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _reenterPassword = value;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Re-Enter Password',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            return _validateReenterPassword(value!);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        130 * fem,
                        2 * fem,
                      ),
                      child: Text(
                        'Enter Mobile Number',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        15 * fem,
                        0 * fem,
                        0 * fem,
                        40 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        94,
                        0,
                        80,
                        50,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate all fields when Sign In button is pressed.
                          if (_formKey.currentState!.validate()) {
                            // Username, password, and re-entered password are correct, navigate to the next page.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtpPage(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validateUsername(String username) {
    if (username.contains(RegExp(r'\d'))) {
      return 'Username cannot contain numbers';
    }
    return null;
  }

  String? _validatePassword(String password) {
    if (password.length < 8) {
      return '\n\nPassword must be at least 8 characters';
    }
    return null;
  }

  String? _validateReenterPassword(String reenterPassword) {
    if (reenterPassword != _password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
