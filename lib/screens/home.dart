import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffFBFFE2)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedButton(
                child: Text(
                  'Speech To Text',
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
                height: 70,
                width: 180,
                color: Color(0xffA1E3F8),
                onPressed: () {
                  Navigator.pushNamed(context, '/speectToText');
                },
                enabled: true,
                shadowDegree: ShadowDegree.light,
                duration: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
