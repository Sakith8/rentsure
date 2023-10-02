import 'package:flutter/material.dart';
import 'package:rentsure/about.dart';
import 'package:rentsure/address.dart';
import 'package:rentsure/house/claim1_house.dart';
import 'package:rentsure/house/coverage_house.dart';
import 'package:rentsure/house/homepage_house.dart';
import 'package:rentsure/login.dart';
import 'package:rentsure/payment.dart';
import 'package:rentsure/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:rentsure/settings_dark.dart';

void main() {
  runApp(
    const SettingsHouse(),
  );
}

File? _image;

class SettingsHouse extends StatefulWidget {
  const SettingsHouse({Key? key}) : super(key: key);

  @override
  _SettingsHouseState createState() => _SettingsHouseState();
}

class _SettingsHouseState extends State<SettingsHouse> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1000 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 120 * fem,
                top: 60 * fem,
                child: Align(
                  child: SizedBox(
                    width: 200 * fem,
                    height: 100 * fem,
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
                left: 70 * fem,
                top: 155 * fem,
                child: Container(
                  width: 262 * fem,
                  height: 80 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 16 * fem, 0 * fem),
                        child: Text(
                          'Sakith Enuka',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final imagePicker = ImagePicker();
                          final pickedFile = await imagePicker.pickImage(
                            source: ImageSource.camera,
                          );

                          if (pickedFile != null) {
                            setState(() {
                              _image = File(pickedFile.path);
                            });
                          }
                        },
                        child: _image == null
                            ? CircleAvatar(
                                radius: 50 * fem,
                                backgroundColor: Colors.grey[200],
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 30 * fem,
                                  color: Colors.grey[600],
                                ),
                              )
                            : CircleAvatar(
                                radius: 50 * fem,
                                backgroundImage: FileImage(_image!),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 270 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 20 * fem, 0 * fem, 20 * fem),
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
                              'Profile',
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
                                Icons.person,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Address()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 350 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 20 * fem, 0 * fem, 20 * fem),
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
                              'Address',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(230 * fem, 0, 0, 0),
                              child: Icon(
                                Icons.post_add,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Payment()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 430 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 20 * fem, 0 * fem, 20 * fem),
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
                              margin: EdgeInsets.fromLTRB(225 * fem, 0, 0, 0),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 510 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 20 * fem, 0 * fem, 20 * fem),
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
                              'About RentSure',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(170 * fem, 0, 0, 0),
                              child: Icon(
                                Icons.info,
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
              Container(
                margin:
                    EdgeInsets.fromLTRB(7 * fem, 590 * fem, 7 * fem, 20 * fem),
                padding:
                    EdgeInsets.fromLTRB(40 * fem, 20 * fem, 0 * fem, 20 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 230, 229),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Row(
                  children: [
                    Text(
                      'Appearance',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isDarkModeEnabled = !isDarkModeEnabled;
                          // Add your dark mode toggle logic here
                        });

                        // Navigate to the SettingsDark page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsDark()),
                        );
                      },
                      child: AnimatedContainer(
                        margin: EdgeInsets.fromLTRB(
                            180 * fem, 0 * fem, 20 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            4 * fem, 2 * fem, 4 * fem, 2 * fem),
                        duration: const Duration(milliseconds: 200),
                        width: 60 * fem,
                        height: 30 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                          gradient: LinearGradient(
                            colors: isDarkModeEnabled
                                ? [
                                    const Color(0xff000000),
                                    const Color(0xff333333)
                                  ]
                                : [
                                    Color.fromARGB(255, 255, 255, 255),
                                    const Color(0xffeeeeee)
                                  ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Stack(
                          alignment: !isDarkModeEnabled
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          children: [
                            Container(
                              width: 20 * fem,
                              height: 20 * fem,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 20 * fem,
                              height: 20 * fem,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isDarkModeEnabled
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
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
                          builder: (context) => const LoginPage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      7 * fem, 670 * fem, 7 * fem, 20 * fem),
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 20 * fem, 0 * fem, 20 * fem),
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
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Row(
                          children: [
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(250 * fem, 0, 0, 0),
                              child: Icon(
                                Icons.logout,
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
              Container(
                height: 85 * fem,
                margin: EdgeInsets.fromLTRB(0, 780 * fem, 0, 0),
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
                                builder: (context) => const HomePageHouse()),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Claim1House()),
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
                                builder: (context) => const SettingsHouse()),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 30 * fem,
                              color: const Color(0xff000000),
                            ),
                            Text(
                              'Setting',
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
