import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:rentsure/house/homepage_house.dart';
import 'package:rentsure/register/forgotpw.dart';
import 'package:rentsure/register/signup.dart';
import 'package:rentsure/main.dart';

void main() {
  runApp(
    const LoginPage(),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _usernameError = false;
  bool _passwordError = false;

  // Function to read the JSON file
  Future<Map<String, dynamic>> readJsonFile() async {
    final String data =
        await rootBundle.loadString('android/assets/credentials.json');
    return json.decode(data);
  }

  void _login() async {
    final Map<String, dynamic> credentials = await readJsonFile();
    final String storedUsername = credentials['username'];
    final String storedPassword = credentials['password'];

    setState(() {
      _usernameError = _usernameController.text != storedUsername;
      _passwordError = _passwordController.text != storedPassword;
    });

    if (!_usernameError && !_passwordError) {
      // Username and password are valid
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePageHouse(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0;
    const double ffem = 1.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(
                  16 * fem,
                  64.5 * fem,
                  30 * fem,
                  28 * fem,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        230 * fem,
                        77.5 * fem,
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        133 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Username or Email',
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
                        35 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color:
                              _usernameError ? Colors.red : Colors.transparent,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
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
                        0 * fem,
                        0 * fem,
                        193 * fem,
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
                        10 * fem,
                        0 * fem,
                        0 * fem,
                        15 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color:
                              _passwordError ? Colors.red : Colors.transparent,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    if (_passwordError)
                      Container(
                        margin: const EdgeInsets.fromLTRB(
                          10 * fem,
                          0,
                          10,
                          15,
                        ),
                        child: const Text(
                          'Password should be minimum of 8 characters',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        15 * fem,
                        0 * fem,
                        0 * fem,
                        25 * fem,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPW(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        90 * fem,
                        0 * fem,
                        80 * fem,
                        50 * fem,
                      ),
                      child: ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
                        ),
                        child: const SizedBox(
                          width: double.infinity,
                          height: 40 * fem,
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        14 * fem,
                        0 * fem,
                        0 * fem,
                        197 * fem,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninPage()),
                          );
                        },
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Don’t Have an account ? ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff2271e4),
                                  decorationColor: Color(0xff2271e4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10 * fem, right: 350 * fem),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartUpPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
