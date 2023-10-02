import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rentsure/house/claim1_house.dart';
import 'package:rentsure/house/coverage_house.dart';
import 'dart:io';

import 'package:rentsure/house/homepage_house.dart';
import 'package:rentsure/house/settings_house.dart';

void main() {
  runApp(AddItems());
}

File? _selectedImage;

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  _AddItemsState createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  double fem = 1.0;
  double ffem = 1.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 3000 * fem,
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
                          builder: (context) => const HomePageHouse()),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  25 * fem,
                  120 * fem,
                  133 * fem,
                  2 * fem,
                ),
                child: Text(
                  'Insure Your Items',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w900,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  25 * fem,
                  170 * fem,
                  10 * fem,
                  2 * fem,
                ),
                child: Text(
                  'Note : You can only insure above mentioned items at your house \nhold.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  25 * fem,
                  230 * fem,
                  0 * fem,
                  2 * fem,
                ),
                child: Text(
                  'Select your loved items for there safety',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w900,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 260 * fem, 0 * fem, 2 * fem),
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: true,
                          groupValue: null,
                          onChanged: (bool? value) {
                            // Handle onChanged event here
                          },
                        ),
                        Text("Furniture"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20 * fem, 0, 0 * fem,
                        2 * fem), // Adjust the margin as needed
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: null,
                          onChanged: (bool? value) {
                            // Handle onChanged event here
                          },
                        ),
                        Text("Electronics"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20 * fem, 0, 0 * fem,
                        2 * fem), // Adjust the margin as needed
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: null,
                          onChanged: (bool? value) {},
                        ),
                        Text("Appliances"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20 * fem, 0, 0 * fem, 2 * fem),
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: null,
                          onChanged: (bool? value) {},
                        ),
                        Text("Jewelery"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20 * fem, 0, 0 * fem, 2 * fem),
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: null,
                          onChanged: (bool? value) {},
                        ),
                        Text("Art and Collectibles"),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  25 * fem,
                  510 * fem,
                  0 * fem,
                  2 * fem,
                ),
                child: Text(
                  'Provide a proof of the items for a better safety.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w900,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  150 * fem,
                  610 * fem,
                  150 * fem,
                  50 * fem,
                ),
                child: GestureDetector(
                  onTap: () async {
                    final imagePicker = ImagePicker();
                    final pickedFile = await imagePicker.pickImage(
                      source: ImageSource.camera,
                    );

                    if (pickedFile != null) {
                      setState(() {
                        _selectedImage = File(pickedFile.path);
                      });
                    }
                  },
                  child: GestureDetector(
                    onTap: () async {
                      final imagePicker = ImagePicker();
                      final pickedFile = await imagePicker.pickImage(
                        source: ImageSource.camera,
                      );

                      if (pickedFile != null) {
                        setState(() {
                          _selectedImage = File(pickedFile.path);
                        });
                      }
                    },
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25 * fem),
                        ),
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        width: double.infinity,
                        height: 40 * fem,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size: 25 * fem,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 5 * fem,
                              ),
                            ],
                          ),
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
