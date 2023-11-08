import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

//ctrl+shif+p(add depand)
class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  State<Generate> createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  TextEditingController controller = TextEditingController();
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
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
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Generate QR Code",
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5CA6B0)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300,
                height: 500,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: const Color(
                      0xFF1C1C1C), // Set the background color of the blue box
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            // Load the background image from the assets

                            // Position the QR code image on top of the background image
                            Positioned(
                              top: 12,
                              // Adjust the position as needed
                              left: 10,

                              // Adjust the position as needed
                              child: QrImageView(
                                data: controller.text,
                                version: QrVersions.auto,
                                size: 180,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Image.asset(
                              'assets/Generate.png',
                              height: 200,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter data',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text("Generate QR Code",
                            style: TextStyle(color: Colors.black87)),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF5CA6B0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
