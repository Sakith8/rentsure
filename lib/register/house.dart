import 'package:flutter/material.dart';

import 'package:rentsure/house/homepage_house.dart';
import 'package:rentsure/register/prof3.dart';

void main() {
  runApp(const MaterialApp(
    home: HousePage(),
  ));
}

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(17 * fem, 57 * fem, 31 * fem, 20 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 29 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'House',
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
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 18 * fem, 19 * fem, 0 * fem),
                      child: Icon(
                        Icons.house,
                        size: 40 * fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 200 * fem, 18 * fem),
                child: Text(
                  'Property Address',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 30 * fem, 0 * fem, 20 * fem),
                width: 350 * fem,
                height: 50 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25 * fem),
                  color: const Color(0xffeaeaea),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Address Line 1',
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
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 20 * fem),
                width: 350 * fem,
                height: 50 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25 * fem),
                  color: const Color(0xffeaeaea),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Address Line 2',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20 * fem),
                  width: 200 * fem,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25 * fem),
                    color: const Color(0xff000000),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePageHouse()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      21 * fem, 10 * fem, 0 * fem, 41.5 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 227 * fem,
                  ),
                  child: Text(
                    'Homeowners have the ability \n cover your home from',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 17 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              25 * fem, 10 * fem, 20 * fem, 0 * fem),
                          width: 40 * fem,
                          height: 40 * fem,
                          child: Icon(
                            Icons.money,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            size: 40 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              55 * fem, 10 * fem, 55 * fem, 0 * fem),
                          width: 40 * fem,
                          height: 40 * fem,
                          child: Icon(
                            Icons.local_fire_department,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            size: 40 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 10 * fem, 10 * fem, 0 * fem),
                          width: 40 * fem,
                          height: 40 * fem,
                          child: Icon(
                            Icons.landscape,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            size: 40 * fem,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * fem),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '         Theft \nand Vandalism',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 40 * fem),
                        Text(
                          '         Fire \n   and Smoke',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 65 * fem),
                        Text(
                          'Weather \nExtreme',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120 * fem, right: 335 * fem),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage3()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
