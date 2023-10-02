import 'package:flutter/material.dart';
import 'package:rentsure/building/claim1_build.dart';
import 'package:rentsure/building/homepage_build.dart';
import 'package:rentsure/building/settings_build.dart';
import 'package:rentsure/building/theft_build.dart';
import 'package:rentsure/building/firesmoke_build.dart';

void main() {
  runApp(const CoverageBuild());
}

class CoverageBuild extends StatelessWidget {
  const CoverageBuild({super.key});

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
                top: 35 * fem,
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
                left: 18 * fem,
                top: 120 * fem,
                child: Align(
                  child: SizedBox(
                    width: 309 * fem,
                    height: 26 * fem,
                    child: Text(
                      'Select from what you need to cover',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50 * fem,
                top: 190 * fem,
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TheftBuild()),
                            );
                          },
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
                                    Icons.money,
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
                                      'Theft \nand Vandalism',
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
              Positioned(
                left: 225 * fem,
                top: 190 * fem,
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FireSmokeBuild()),
                            );
                          },
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
