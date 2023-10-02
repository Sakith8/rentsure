import 'package:flutter/material.dart';
import 'package:rentsure/building/claim1_build.dart';
import 'package:rentsure/building/claim3_build.dart';
import 'package:rentsure/building/coverage_build.dart';
import 'package:rentsure/building/homepage_build.dart';
import 'package:rentsure/building/settings_build.dart';

void main() {
  runApp(const Claim2Build());
}

class Claim2Build extends StatelessWidget {
  const Claim2Build({super.key});

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
                          builder: (context) => const Claim3Build()),
                    );
                  },
                ),
              ),
              Positioned(
                left: 7 * fem,
                top: 150 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 22 * fem, 30 * fem, 20 * fem),
                  width: 392 * fem,
                  height: 200 * fem,
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
                            90 * fem, 0 * fem, 90 * fem, 10 * fem),
                        child: Text(
                          'Status Pending',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 21 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            7 * fem, 15 * fem, 0 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            70 * fem, 25 * fem, 0 * fem, 29 * fem),
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
                                'Waiting for Approval',
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
                top: 370 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 25 * fem, 30 * fem, 20 * fem),
                  width: 392 * fem,
                  height: 200 * fem,
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
                            20 * fem, 0 * fem, 20 * fem, 10 * fem),
                        child: Text(
                          'Your Current Plan',
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
                            0 * fem, 10 * fem, 0 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 5 * fem, 20 * fem, 29 * fem),
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
                                  80 * fem, 8 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                '    Your claim will be \nwaiting for approval . . .',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
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
