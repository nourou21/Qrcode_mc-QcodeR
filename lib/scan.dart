import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qrcodemc/settings/ThemeProvider.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String? qrData; // Variable to store the scanned QR code data

  Future _qrscanner() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      String? scannedData = await scanner.scan();
      setState(() {
        qrData = scannedData; // Set the scanned data to the qrData variable
      });
    } else {
      var isGranted = await Permission.camera.request();

      if (isGranted.isGranted) {
        String? scannedData = await scanner.scan();
        setState(() {
          qrData = scannedData; // Set the scanned data to the qrData variable
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey.shade900 : Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                size: 30,
                              ), // Use the back/return icon
                              onPressed: () {
                                // Navigate back to the previous screen
                                Navigator.of(context).pop();
                              },
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Scan QR Code",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF5CA6B0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 202,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/Generate.png'),
                height: 200,
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _qrscanner();
                },
                child: Text("Scan for QR Code",
                    style: TextStyle(color: Colors.black87)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF5CA6B0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                qrData ??
                    "", // Display the scanned data or an empty string if no data is scanned
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
