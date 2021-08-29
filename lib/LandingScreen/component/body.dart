import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeiotapplicationdesign/SensorScreen/sensor_screen.dart';
import 'package:homeiotapplicationdesign/constants.dart';

import 'controll_button.dart';
import 'default_button.dart';

class LandingScreenBody extends StatefulWidget {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "What do you think you'll \n use mostly",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Center(
                child: Text(
                  "Tap on that apply. This will help us customize your home page",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: kDarkGreyColor,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ControlButton(
                    size: size,
                    title: "Maintainance\nRequests",
                    icon: Icons.settings_outlined,
                  ),
                  ControlButton(
                    size: size,
                    title: "Integrations\n",
                    icon: Icons.grain_outlined,
                  ),
                  ControlButton(
                    size: size,
                    title: "Light\nControl",
                    icon: Icons.lightbulb_outline,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ControlButton(
                    size: size,
                    title: "Leak\nDetector",
                    icon: Icons.opacity_outlined,
                  ),
                  ControlButton(
                    size: size,
                    title: "Temprature\nContro",
                    icon: Icons.ac_unit_outlined,
                  ),
                  ControlButton(
                    size: size,
                    title: "Guest\Access",
                    icon: Icons.vpn_key_outlined,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              DefaultButton(size: size,title:"Next",press: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => SensorScreen()));
              },),
              SizedBox(
                height: size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


