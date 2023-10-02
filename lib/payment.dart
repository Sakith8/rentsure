import 'package:flutter/material.dart';
import 'package:rentsure/house/claim1_house.dart';
import 'package:rentsure/house/coverage_house.dart';
import 'package:rentsure/house/homepage_house.dart';
import 'package:rentsure/house/settings_house.dart';
import 'package:rentsure/profile.dart';

void main() {
  runApp(const Payment());
}

class Payment extends StatelessWidget {
  const Payment({super.key});

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
                          builder: (context) => const SettingsHouse()),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 130 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      30 * fem, 20 * fem, 0 * fem, 20 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 230, 229),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 18 * fem, 0 * fem),
                        child: Row(
                          children: [
                            Text(
                              'Payment',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(240 * fem, 0, 0, 0),
                              child: Icon(
                                Icons.payment,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                size: 28 * fem,
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
