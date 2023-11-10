import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qrcodemc/settings/ThemeProvider.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    Color? cardColor = isDarkMode ? Colors.grey.shade800 : Colors.grey[300];

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
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.grey,
                ),
                Text(
                  "About Us",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF5CA6B0),
                  ),
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
                color: Color(0xFF5CA6B0),
              ),
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
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: cardColor,
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
                            color: Color(0xFF5CA6B0),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/abdenour-ouhba-630944224/');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                _launchURL(
                                    'https://www.facebook.com/profile.php?id=100095311006804');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                _launchURL('mailto:qabdenourouhba@gmail.com');
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
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Slimane',
                          style: GoogleFonts.inter(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5CA6B0),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/abdenour-ouhba-630944224/');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                _launchURL(
                                    'https://www.facebook.com/profile.php?id=100095311006804');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                _launchURL('mailto:qabdenourouhba@gmail.com');
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
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Amine',
                          style: GoogleFonts.inter(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5CA6B0),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/abdenour-ouhba-630944224/');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                _launchURL(
                                    'https://www.facebook.com/profile.php?id=100095311006804');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                _launchURL('mailto:qabdenourouhba@gmail.com');
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
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'SIFOUANE Lyna Basma',
                          style: GoogleFonts.inter(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5CA6B0),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/abdenour-ouhba-630944224/');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                _launchURL(
                                    'https://www.facebook.com/profile.php?id=100095311006804');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                _launchURL('mailto:qabdenourouhba@gmail.com');
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
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'IGHILAHRIZ Rym Yasmine',
                          style: GoogleFonts.inter(
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5CA6B0),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.linkedin),
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/abdenour-ouhba-630944224/');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                _launchURL(
                                    'https://www.facebook.com/profile.php?id=100095311006804');
                              },
                              color: Colors.blue,
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                _launchURL('mailto:qabdenourouhba@gmail.com');
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

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
