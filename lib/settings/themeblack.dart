import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodemc/settings/ThemeProvider.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey.shade900 : Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  isDarkMode
                      ? Image(
                          image: AssetImage('assets/moon.png'),
                          height: 160,
                        )
                      : Image(
                          image: AssetImage('assets/Sun.png'),
                          height: 160,
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    !isDarkMode ? 'Light mode' : 'Dark mode',
                    style: TextStyle(
                      color: isDarkMode ? Colors.black : Colors.black,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Transform.scale(
                      scale: 4,
                      child: Switch(
                        value: isDarkMode,
                        onChanged: (value) {
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme();
                        },
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.shade600,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
