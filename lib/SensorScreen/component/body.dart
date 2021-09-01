import 'package:flutter/material.dart';
import 'package:homeiotapplicationdesign/SensorScreen/component/custom_card.dart';
import 'package:homeiotapplicationdesign/constants.dart';

class SensorScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Container(
          color: kBgColor,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Poppins"),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 6,
                                offset: Offset(3, 3))
                          ],
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: kDarkGreyColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/profile_picture.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jun14, 2020",
                          style: TextStyle(color: kDarkGreyColor, fontSize: 12),
                        ),
                        Text(
                          "Good, Morning",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "Micheal",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "40*",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "Temprature",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "40*",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "Temprature",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                CustomCard(
                  icon: Icon(Icons.home_outlined,size: 55,color: Colors.grey,),
                  size: size,
                  title: "Entry",
                  statusOn: "Open",
                  statusOf: "Close",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
