import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentsure/login.dart';
import 'package:rentsure/register/signup.dart';

void main() {
  runApp(
    const MaterialApp(
      home: StartUpPage(),
    ),
  );
}

class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});
  final sizedBox = const SizedBox(
    height: 200,
    width: 100,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomPaint(
          size: const Size(300, 500),
          painter: MyPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 100),
                child: Text(
                  'RentSure',
                  style: GoogleFonts.poppins(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              sizedBox,
              Container(
                margin: const EdgeInsets.only(top: 5, left: 110, bottom: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(150, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 25,
                  left: 110,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(150, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text('Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect leftRect =
        Rect.fromPoints(const Offset(205, 0), const Offset(0, 250));
    final Rect rightRect =
        Rect.fromPoints(const Offset(205, 0), const Offset(500, 250));

    final Paint leftPaint = Paint()..color = const Color(0xFF496690);
    final Paint rightPaint = Paint()..color = const Color(0xFF7994BC);

    canvas.drawRect(leftRect, leftPaint);
    canvas.drawRect(rightRect, rightPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
