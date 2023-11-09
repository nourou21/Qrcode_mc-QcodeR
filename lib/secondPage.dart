import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qrcodemc/Generate.dart';
import 'package:qrcodemc/aboutus.dart';
import 'package:qrcodemc/scan.dart';
import 'package:qrcodemc/settings/ThemeProvider.dart';
import 'package:qrcodemc/settings/themeblack.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return WillPopScope(
        onWillPop: () async {
          // Handle back button press here
          // You can perform any actions before navigating back if needed
          // For example, if you want to show an alert before exiting the page
          // return true; // Return true to allow back navigation, or false to prevent it
          return false;
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: isDarkMode ? Colors.grey.shade900 : Colors.white,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 25,
                          color: Colors.black,
                        ), // Icon
                        label: Text(
                          'Settings',
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ), // Label
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade800),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Image(
                    image: AssetImage("assets/qr1.png"),
                    height: 160,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Scan(),
                        ),
                      );
                    },
                    child: Text("Scan for QR Code",
                        style: TextStyle(color: Colors.black87)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF5CA6B0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 25.0, // Height of the white line
                    width: MediaQuery.of(context).size.width *
                        1.2, // Width of the white line (80% of the screen width)
                    color: Colors.black12, // Color of the white line
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                    image: AssetImage("assets/qr2.png"),
                    height: 160,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Generate(),
                        ),
                      );
                    },
                    child: Text("Generate QR Code",
                        style: TextStyle(color: Colors.black87)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF5CA6B0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 230,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const about(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.add), // Icon (in this case, a plus icon)
                            SizedBox(
                                width:
                                    8), // Horizontal spacing between icon and text
                            Text('About Us'), // Text displayed next to the icon
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors
                              .grey.shade800, // Background color of the button
                          onPrimary: Colors.white, // Text color on the button
                          padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10), // Padding inside the button
                          textStyle: TextStyle(
                              fontSize: 18), // Text style of the button text
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
