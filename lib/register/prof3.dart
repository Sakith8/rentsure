import 'package:flutter/material.dart';
import 'package:rentsure/register/building.dart';
import 'package:rentsure/register/house.dart';
import 'package:rentsure/register/prof2.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfilePage3(),
  ));
}

class ProfilePage3 extends StatelessWidget {
  const ProfilePage3({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16 * fem, 57 * fem, 16 * fem, 20 * fem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 210 * fem, 15.5 * fem),
                child: Text(
                  'RentSure',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 40 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 15 * fem, 220 * fem, 66.5 * fem),
              child: Text(
                'Select type of rent',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 19 * fem,
                  fontWeight: FontWeight.w800,
                  height: 1.5 * fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuildingPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    130 * fem, 20 * fem, 130 * fem, 20 * fem),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      15 * fem, 15 * fem, 15 * fem, 15 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.apartment,
                      size: 50 * fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 8.5 * fem),
              child: Text(
                'Building',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Center(
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 39.5 * fem),
                constraints: BoxConstraints(
                  maxWidth: 216 * fem,
                ),
                child: Text(
                  'Building refers to as renters who tend to have apartments.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HousePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    130 * fem, 20 * fem, 130 * fem, 20 * fem),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 15 * fem, 15 * fem, 15 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.home, // House icon
                      size: 50 * fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14 * fem, 0 * fem, 0 * fem, 7 * fem),
              child: Text(
                'House',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Center(
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
                constraints: BoxConstraints(
                  maxWidth: 203 * fem,
                ),
                child: Text(
                  'House refers to as renters who live in a property.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13 * ffem,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10 * fem, right: 350 * fem),
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage2()),
            );
          },
        ),
      ),
    );
  }
}
