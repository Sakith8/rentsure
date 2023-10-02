import 'package:flutter/material.dart';

import 'package:rentsure/register/prof1.dart';
import 'package:rentsure/register/signup.dart';

void main() {
  runApp(const MaterialApp(
    home: OtpPage(),
  ));
}

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(3 * fem, 70 * fem, 10 * fem, 20 * fem),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 70 * fem),
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 40 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OtpTextField(fem: fem),
                      OtpTextField(fem: fem),
                      OtpTextField(fem: fem),
                      OtpTextField(fem: fem),
                      OtpTextField(fem: fem),
                      OtpTextField(fem: fem),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Number',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 60 * fem),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                    ),
                    child: Container(
                      width: 150 * fem,
                      height: 45 * fem,
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1 * fem, top: 400 * fem),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    Key? key,
    required this.fem,
  }) : super(key: key);

  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45 * fem,
      height: 45 * fem,
      margin: EdgeInsets.symmetric(horizontal: 11 * fem),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5 * fem),
        color: const Color(0xffd9d9d9),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        maxLines: null,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
