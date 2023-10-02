import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:rentsure/register/OTP.dart';
import 'package:rentsure/register/prof2.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ProfilePage(),
    ),
  );
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double fem = 1.0;
  double ffem = 1.0;
  File? _selectedImage;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _NameError = false;
  bool _DOBError = false;

  void _login() {
    setState(() {
      _NameError = _nameController.text != 'sakith';
      _DOBError = _dobController.text != '123456';
    });

    if (!_NameError && !_DOBError) {
      // Both fields are not empty, navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfilePage2(),
        ),
      );
    }
  }

  String? _selectedRegion;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Stack(
          children: [
            Container(
              padding:
                  EdgeInsets.fromLTRB(17 * fem, 56 * fem, 18 * fem, 20 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 60 * fem),
                      child: Text(
                        'RentSure',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Center(
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
                        child: _selectedImage == null
                            ? CircleAvatar(
                                radius: 50 * fem,
                                backgroundColor: Colors.grey[200],
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 60 * fem,
                                  color: Colors.grey[600],
                                ),
                              )
                            : CircleAvatar(
                                radius: 50 * fem,
                                backgroundImage: FileImage(_selectedImage!),
                              ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        122 * fem,
                        20 * fem,
                        0 * fem,
                        0 * fem,
                      ),
                      child: Text(
                        'Set Profile Picture',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 20 * fem),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        40 * fem,
                        20 * fem,
                        0 * fem,
                        10 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color: _NameError ? Colors.red : Colors.transparent,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 0 * fem, bottom: 0 * fem),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            hintText: 'Name',
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
                        10 * fem,
                        0 * fem,
                        10 * fem,
                      ),
                      width: 299 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                        border: Border.all(
                          color: _DOBError ? Colors.red : Colors.transparent,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 0 * fem, bottom: 0 * fem),
                        child: TextFormField(
                          controller: _dobController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Date of Birth',
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
                        10 * fem,
                        0 * fem,
                        20 * fem,
                      ),
                      padding: EdgeInsets.only(
                          left: 0, top: 0 * fem, bottom: 0 * fem),
                      width: 299 * fem,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25 * fem),
                        color: const Color(0xffeaeaea),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: _selectedRegion,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedRegion = newValue;
                          });
                        },
                        items: [
                          const DropdownMenuItem<String>(
                            value: 'United States',
                            child: Text('United States'),
                          ),
                          const DropdownMenuItem<String>(
                            value: 'United Kingdom',
                            child: Text('United Kingdom'),
                          ),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Region',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 40 * fem, 0 * fem, 0 * fem),
                        width: 150 * fem,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25 * fem),
                        ),
                        child: TextButton(
                          onPressed: () {
                            _login();
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13 * ffem,
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
              bottom: 10 * fem,
              right: 360 * fem,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OtpPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
