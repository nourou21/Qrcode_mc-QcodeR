import 'package:QcodeR/sliders/secondslider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';


class fisrtsld extends StatefulWidget {
  const fisrtsld({super.key});

  @override
  State<fisrtsld> createState() => _fisrtsldState();
}

class _fisrtsldState extends State<fisrtsld> {
  int current_step = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(92, 166, 176, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/fisrtslide.png'),
                height: 180,
              ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
            ),
            Text(
              "Generate your ",
              style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
            Text(
              " own QR Code ",
              style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Image(
                      image: AssetImage('assets/firstslide.png'),
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 170,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_circle_right,
                        size: 50,
                        color: Colors.grey.shade900,
                      ), // Use the back/return icon
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const secondslid(),
                          ),
                        );
                        // Navigate back to the previous screen
                      },
                      color: Colors.grey,
                    )
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms)
                        .fade(delay: 500.ms),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
