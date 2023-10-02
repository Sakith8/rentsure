import 'package:flutter/material.dart';
import 'package:rentsure/login.dart';


void main() {
  runApp(const MaterialApp(
    home: ForgotPW(),
  ));
}

class ForgotPW extends StatelessWidget {
  const ForgotPW({super.key});

  

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
                        50 * fem,
                        70 * fem,
                      ),
                      child: const Text(
                        'Forget Password',
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
                        190 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Enter Email',
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
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
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
                        0 * fem,
                        0 * fem,
                        170 * fem,
                        2 * fem,
                      ),
                      child: const Text(
                        'Enter Password',
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
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
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
                        94 * fem,
                        0 * fem,
                        80 * fem,
                        30 * fem,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          
                          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
                        ),
                        child: const SizedBox(
                          width: double.maxFinite,
                          height: 40 * fem,
                          child: Center(
                            child: Text(
                              'Ok',
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
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
