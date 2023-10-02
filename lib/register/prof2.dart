import 'package:flutter/material.dart';

import 'package:rentsure/register/prof1.dart';
import 'package:rentsure/register/prof3.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfilePage2(),
  ));
}

final TextEditingController _usernameController = TextEditingController();
String? _usernameError;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Add this line

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({Key? key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0;
    const double ffem = 1.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(
                    0 * fem,
                    60 * fem,
                    30 * fem,
                    28 * fem,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(
                          15 * fem,
                          0 * fem,
                          200 * fem,
                          80 * fem,
                        ),
                        child: const Text(
                          'RentSure',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 40 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(
                            100 * fem,
                            0 * fem,
                            100 * fem,
                            10 * fem,
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
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15, top: 0 * fem),
                          child: TextFormField(
                            controller: _usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Username is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              errorText:
                                  _usernameError, // Display the error message
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(
                          94 * fem,
                          20 * fem,
                          80 * fem,
                          50 * fem,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Validate the form
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfilePage3(),
                                ),
                              );
                            }
                          },
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
                                'Next',
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
              padding:
                  const EdgeInsets.only(bottom: 10 * fem, right: 350 * fem),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
