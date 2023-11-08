import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrcodemc/sliders/thirdslider.dart';


class secondslid extends StatefulWidget {
  const secondslid({super.key});

  @override
  State<secondslid> createState() => _secondslidState();
}

class _secondslidState extends State<secondslid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(92, 166, 176, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
                child: Image(
              image: AssetImage('assets/secondsslide.png'),
              height: 250,
            ).animate().fade(duration: 500.ms).scale(delay: 500.ms)),
            Text(
              " Scan any QR Code ",
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
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/secondslide.png'),
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_circle_left,
                        size: 40,
                        color: Colors.grey.shade900,
                      ), // Use the back/return icon
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Navigate back to the previous screen
                      },
                      color: Colors.grey,
                    )
                        .animate()
                        .fade(duration: 500.ms)
                        .scale(delay: 500.ms)
                        .fade(delay: 500.ms),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const thirdslide(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                              ), // Icon (in this case, a plus icon)
                              SizedBox(
                                  width:
                                      8), // Horizontal spacing between icon and text
                              Text('Next'), // Text displayed next to the icon
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey
                                .shade800, // Background color of the button
                            onPrimary: Colors.white, // Text color on the button
                            padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10), // Padding inside the button
                            textStyle: TextStyle(
                                fontSize: 18), // Text style of the button text
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                      ],
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
