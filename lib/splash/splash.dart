import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:qrcodemc/sliders/firstslider.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => fisrtsld(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Text(
          "QcodeR",
          style: GoogleFonts.inter(
              fontSize: 90,
              fontWeight: FontWeight.w700,
              color: Color(0xFF5CA6B0)),
        ),
      )
          .animate()
          .fade(duration: 500.ms)
          .scale(delay: 500.ms)
          .fade(delay: 500.ms),
    );
  }
}
