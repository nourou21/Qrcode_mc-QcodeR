import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
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
                  _switchValue
                      ? Image(
                          image: AssetImage('assets/Sun.png'),
                          height: 160,
                        )
                      : Image(
                          image: AssetImage('assets/moon.png'),
                          height: 160,
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _switchValue ? 'Light mode' : 'Dark mode',
                    style: TextStyle(
                      color: _switchValue ? Colors.black : Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Transform.scale(
                    scale: 4,
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.shade600,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
