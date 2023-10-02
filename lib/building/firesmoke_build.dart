import 'package:flutter/material.dart';
import 'package:rentsure/building/claim1_build.dart';
import 'package:rentsure/building/coverage_build.dart';
import 'package:rentsure/building/homepage_build.dart';
import 'package:rentsure/building/settings_build.dart';

void main() {
  runApp(const FireSmokeBuild());
}

class FireSmokeBuild extends StatelessWidget {
  const FireSmokeBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 1000 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 145 * fem,
                top: 36 * fem,
                child: Align(
                  child: SizedBox(
                    width: 150 * fem,
                    height: 45 * fem,
                    child: Text(
                      'RentSure',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 35 * fem,
                right: 360 * fem,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CoverageBuild()),
                    );
                  },
                ),
              ),
              Positioned(
                left: 145 * fem,
                top: 130 * fem,
                child: Container(
                  width: 285 * fem,
                  height: 140 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 29 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                17 * fem, 18 * fem, 17 * fem, 20.5 * fem),
                            width: 128 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff000000)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(25 * fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      6 * fem, 0 * fem, 6 * fem, 5.5 * fem),
                                  width: 42 * fem,
                                  height: 45 * fem,
                                  child: Icon(
                                    Icons.local_fire_department,
                                    size: 42 * fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 94 * fem,
                                    ),
                                    child: Text(
                                      'Fire \nand Smoke',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
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
              Container(
                margin: EdgeInsets.fromLTRB(
                  40 * fem,
                  310 * fem,
                  0 * fem,
                  35 * fem,
                ),
                width: 360 * fem,
                height: 50 * fem,
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  20 * fem,
                  340 * fem,
                  0 * fem,
                  35 * fem,
                ),
                width: 360 * fem,
                height: 150 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25 * fem),
                  color: const Color(0xffeaeaea),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Description',
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
                margin: EdgeInsets.fromLTRB(
                  40 * fem,
                  508 * fem,
                  0 * fem,
                  35 * fem,
                ),
                width: 360 * fem,
                height: 50 * fem,
                child: Text(
                  'Item/s Current Status',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Positioned(
                left: 25 * fem,
                top: 538 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      35 * fem, 21 * fem, 33 * fem, 19 * fem),
                  width: 360 * fem,
                  height: 78 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xffeaeaea),
                    borderRadius: BorderRadius.circular(25 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 0 * fem, 50 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {
                            // Handle camera button click
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor:
                                Colors.black, // Set background color to black
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  25 * fem), // Rounded corners
                            ),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 24 * fem,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle "Unable to send" button click
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(
                              40 * fem, 0 * fem, 40 * fem, 0 * fem),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
                        ),
                        child: Text(
                          'Unable to send',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  120 * fem,
                  665 * fem,
                  120 * fem,
                  50 * fem,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const ()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25 * fem),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40 * fem,
                    child: Center(
                      child: Text(
                        'Submit',
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
                height: 85 * fem,
                margin: EdgeInsets.fromLTRB(0, 745 * fem, 0, 0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      10 * fem, 0 * fem, 10 * fem, 10 * fem),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 16 * fem, 0 * fem, 0 * fem),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 206, 206),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePageBuild()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 30 * fem,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color.fromARGB(255, 119, 118, 118),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoverageBuild()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.layers,
                              size: 30 * fem,
                              color: const Color(0xff000000),
                            ),
                            Text(
                              'Coverage',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Claim1Build()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 30 * fem,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              'Claim',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color.fromARGB(255, 119, 118, 118),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsBuild()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 30 * fem,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              'Setting',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color.fromARGB(255, 119, 118, 118),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
