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
                      ),
                      label: Text(
                        'Settings',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isDarkMode
                                ? Colors.grey.shade800
                                : Colors.grey), // Light mode color
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
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xFF5CA6B0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 25.0,
                  width: MediaQuery.of(context).size.width * 1.2,
                  color: Colors.black12,
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
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xFF5CA6B0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
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
                          Icon(Icons.add),
                          SizedBox(width: 8),
                          Text('About Us'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: isDarkMode
                            ? Colors.grey.shade800
                            : Colors.grey, // Light mode color
                        onPrimary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
