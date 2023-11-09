import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qrcodemc/settings/ThemeProvider.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey.shade900 : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  icon:
                      const Icon(Icons.arrow_back), // Use the back/return icon
                  onPressed: () {
                    // Navigate back to the previous screen
                    Navigator.of(context).pop();
                  },
                  color: Colors.grey,
                ),
                Text(
                  "About Us",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF5CA6B0)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "QcodeR",
              style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF5CA6B0)),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Center(
                    child: Text(
                  "OUR TEAM :",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.grey.shade800,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/OUHBA.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'OUHBA Abdenour',
                          style: GoogleFonts.inter(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5CA6B0)),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                // Handle LinkedIn button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                // Handle Facebook button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                // Handle Instagram button click
                              },
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.grey.shade800,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/team_member_photo.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Slimane ',
                          style: GoogleFonts.inter(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5CA6B0)),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                // Handle LinkedIn button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                // Handle Facebook button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                // Handle Instagram button click
                              },
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.grey.shade800,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/team_member_photo.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Amine',
                          style: GoogleFonts.inter(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5CA6B0)),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                // Handle LinkedIn button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                // Handle Facebook button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                // Handle Instagram button click
                              },
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.grey.shade800,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/team_member_photo.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'SIFOUANE Lyna Basma',
                          style: GoogleFonts.inter(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5CA6B0)),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                // Handle LinkedIn button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                // Handle Facebook button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                // Handle Instagram button click
                              },
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.grey.shade800,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/team_member_photo.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'IGHILAHRIZ Rym Yasmine',
                          style: GoogleFonts.inter(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5CA6B0)),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                // Handle LinkedIn button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                // Handle Facebook button click
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                // Handle Instagram button click
                              },
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
