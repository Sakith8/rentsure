import 'package:flutter/material.dart';
import 'package:rentsure/add_items.dart';
import 'package:rentsure/house/claim1_house.dart';
import 'package:rentsure/house/coverage_house.dart';
import 'package:rentsure/house/settings_house.dart';

void main() {
  runApp(const HomePageHouse());
}

class HomePageHouse extends StatelessWidget {
  const HomePageHouse({super.key});

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
            color: Color.fromARGB(255, 255, 255, 255),
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
                left: 19 * fem,
                top: 121 * fem,
                child: Align(
                  child: SizedBox(
                    width: 125 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Hello Sakith,',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 7 * fem,
                top: 160 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      23 * fem, 22 * fem, 30 * fem, 20 * fem),
                  width: 392 * fem,
                  height: 230 * fem,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 215, 216),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5 * fem,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 158 * fem, 10 * fem),
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
                            7 * fem, 0 * fem, 0 * fem, 20 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 25 * fem, 31 * fem, 29 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 180, 179),
                          borderRadius: BorderRadius.circular(15 * fem),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5 * fem,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  25 * fem, 2 * fem, 77 * fem, 0 * fem),
                              child: Text(
                                'Package Lite',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Text(
                              '   Rs.5000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 8 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 38 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  35 * fem, 0 * fem, 35 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(25 * fem),
                                  ),
                                ),
                                child: Container(
                                  width: 128 * fem,
                                  height: double.infinity,
                                  child: Center(
                                    child: Text(
                                      'Update Plan',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25 * fem),
                                ),
                              ),
                              child: Container(
                                width: 112 * fem,
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    'Payment',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
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
                top: 402 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 17.5 * fem, 17 * fem, 0 * fem),
                  width: 392 * fem,
                  height: 155 * fem,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 215, 216),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5 * fem,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 75 * fem, 10 * fem),
                        constraints: BoxConstraints(maxWidth: 400 * fem),
                        child: Text(
                          'Get insured for your household items.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 19 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddItems()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(bottom: 2 * fem),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
                        ),
                        child: Container(
                          width: 112 * fem,
                          height: 38 * fem,
                          child: Center(
                            child: Text(
                              'Add items',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10 * fem,
                top: 570 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      47 * fem, 56 * fem, 34 * fem, 30 * fem),
                  width: 392 * fem,
                  height: 155 * fem,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 215, 216),
                    borderRadius: BorderRadius.circular(25 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5 * fem,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 63 * fem, 1 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              child: Text(
                                'Due Payment',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Text(
                              '10.08.2023',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120 * fem,
                        height: 60 * fem,
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 15 * fem),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 180, 179),
                          borderRadius: BorderRadius.circular(15 * fem),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5 * fem,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Rs.5000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16 * ffem,
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
              Container(
                height: 120 * fem,
                margin: EdgeInsets.fromLTRB(0, 750 * fem, 0, 0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      10 * fem, 0 * fem, 10 * fem, 10 * fem),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 12 * fem, 0 * fem, 0 * fem),
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
                                builder: (context) => const HomePageHouse()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 30 * fem,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color.fromARGB(255, 0, 0, 0),
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
                                builder: (context) => const CoverageHouse()),
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
                          // Handle the Claim icon tap
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
                                builder: (context) => const SettingsHouse()),
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
