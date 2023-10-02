import 'package:flutter/material.dart';
import 'package:rentsure/building/claim1_build.dart';
import 'package:rentsure/building/claim4_build.dart';
import 'package:rentsure/building/coverage_build.dart';
import 'package:rentsure/building/homepage_build.dart';
import 'package:rentsure/building/settings_build.dart';

void main() {
  runApp(const Claim3Build());
}

class Claim3Build extends StatelessWidget {
  const Claim3Build({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 500 * fem,
          height: 900 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 120 * fem,
                top: 30 * fem,
                child: Align(
                  child: SizedBox(
                    width: 200 * fem,
                    height: 50 * fem,
                    child: Text(
                      'RentSure',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 43 * fem,
                right: 10 * fem,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Claim4Build()),
                    );
                  },
                ),
              ),
              Positioned(
                left: 7 * fem,
                top: 125 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(23 * fem, 0 * fem, 30 * fem, 0 * fem),
                  width: 392 * fem,
                  height: 140 * fem,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 206, 206),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            90 * fem, 15 * fem, 90 * fem, 0 * fem),
                        child: Text(
                          'Status Pending',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            7 * fem, 15 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            110 * fem, 10 * fem, 0 * fem, 20 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 180, 179),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  18 * fem, 0 * fem, 18 * fem, 0 * fem),
                              child: Text(
                                'Approved',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 7 * fem,
                top: 275 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 25 * fem, 30 * fem, 20 * fem),
                  width: 392 * fem,
                  height: 400 * fem,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 200, 199),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 20 * fem),
                        child: Text(
                          'Enter Details to Claim',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          5 * fem,
                          0 * fem,
                          200 * fem,
                          2 * fem,
                        ),
                        child: Text(
                          'Policy Number',
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
                          0 * fem,
                          2 * fem,
                          0 * fem,
                          6 * fem,
                        ),
                        width: 360 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * fem),
                          color: const Color(0xffeaeaea),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
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
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          2 * fem,
                          220 * fem,
                          2 * fem,
                        ),
                        child: Text(
                          'Full Name',
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
                          0 * fem,
                          2 * fem,
                          0 * fem,
                          6 * fem,
                        ),
                        width: 360 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * fem),
                          color: const Color(0xffeaeaea),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
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
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          2 * fem,
                          245 * fem,
                          2 * fem,
                        ),
                        child: Text(
                          'Email',
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
                          0 * fem,
                          2 * fem,
                          0 * fem,
                          6 * fem,
                        ),
                        width: 360 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * fem),
                          color: const Color(0xffeaeaea),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
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
                        margin: EdgeInsets.fromLTRB(
                          0 * fem,
                          2 * fem,
                          220 * fem,
                          2 * fem,
                        ),
                        child: Text(
                          'Address',
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
                          0 * fem,
                          2 * fem,
                          0 * fem,
                          6 * fem,
                        ),
                        width: 360 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25 * fem),
                          color: const Color(0xffeaeaea),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
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
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  120 * fem,
                  690 * fem,
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
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              'Coverage',
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
                                builder: (context) => const Claim1Build()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 30 * fem,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              'Claim',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color.fromARGB(255, 0, 0, 0),
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
