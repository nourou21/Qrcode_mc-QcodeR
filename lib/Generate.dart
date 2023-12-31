import 'dart:io';
import 'dart:typed_data';
import 'package:QcodeR/settings/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  State<Generate> createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  TextEditingController controller = TextEditingController();
  late ScreenshotController screenshotController;

  @override
  void initState() {
    super.initState();
    screenshotController = ScreenshotController();
  }

  Future<void> _saveQrCode() async {
    final status = await Permission.storage.request();
    if (status == PermissionStatus.granted) {
      Uint8List? bytes = await screenshotController.capture();

      if (bytes != null) {
        final directory = (await getExternalStorageDirectory())!.path;
        final imagePath = '$directory/qrcode_image.png';
        File(imagePath).writeAsBytesSync(bytes);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('QR Code saved to $imagePath'),
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to capture QR Code'),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Storage permission denied'),
      ));
    }
  }

  Future<void> converQrCodeToImage() async {
    try {
      Uint8List? bytes = await screenshotController.capture();
      final directory = (await getExternalStorageDirectory())!.path;
      File imgFile = File("$directory/qrCode.png");
      await imgFile.writeAsBytes(bytes as List<int>);
      await Share.shareFiles([imgFile.path], text: "Your text share");
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error: $e'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
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
                          height: 23,
                        ),
                        SizedBox(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                            onPressed: () {
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
                          style: TextStyle(
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
                    color: isDarkMode ? Colors.grey.shade900 : Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Screenshot(
                            controller: screenshotController,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 12,
                                  left: 10,
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
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter data',
                            hintStyle: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text(
                            "Generate QR Code",
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF5CA6B0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              converQrCodeToImage();
                            });
                          },
                          child: Text(
                            "Save QR Code Image",
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF5CA6B0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
