import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimerData extends StatefulWidget {
  const TimerData({super.key});

  @override
  State<TimerData> createState() => _TimerDataState();
}

class _TimerDataState extends State<TimerData> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState( () {
        dataTimer = DateTime.now();
        if(dataTimer.hour<11)
          {
            time='AM';
          }
        else
          {
            time ="PM";
          }
      });
      switch (dataTimer.weekday) {
        case 1:
          day = 'Monday';

          break;
        case 2:
          day = 'Tuesday';

          break;
        case 3:
          day = 'Wednesday';

          break;
        case 4:
          day = 'Thursday';

          break;
        case 5:
          day = 'Friday';

          break;
        case 6:
          day = 'Saturday';

          break;
        case 7:
          day = 'Sunday';

          break;
      }
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 825,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("Assest/Img/pexels-alexfu-1302435.jpg"))),
            child: Column(

              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Alarm",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,width: 5,strokeAlign: BorderSide.strokeAlignInside
                      )
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      Transform.rotate(
                        angle:(dataTimer.second*6*pi/180),
                        child: VerticalDivider(
                          thickness: 4,
                          color: Colors.white,
                          indent: 10,
                          endIndent: 75,
                        ),
                      ),
                      Transform.rotate(
                        angle:(dataTimer.minute*6*pi/180),
                        child: VerticalDivider(
                          thickness: 5,
                          color: Colors.blue,
                          indent: 15,
                          endIndent:100,
                        ),
                      ),
                      Transform.rotate(
                        angle:(dataTimer.hour + dataTimer.minute/60) * 30 * pi / 180,
                        child: VerticalDivider(
                          thickness: 3,
                          color: Colors.red,
                          indent: 20,
                          endIndent:95,
                        ),

                      ),
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),

                      ...List.generate(60, (index) =>  Stack(
                        children:[
                          Transform.rotate(
                            angle:(index*30*pi/180),
                            child: VerticalDivider(
                              thickness: 5,
                              color: Colors.red,
                              indent: 1,
                              endIndent:175,
                            ),
                          ),
                          Transform.rotate(
                          angle:(index*6*pi/180),
                          child: VerticalDivider(
                            thickness: 3,
                            color: Colors.yellow,
                            indent: 1,
                            endIndent:180,
                          ),
                        ),
                      ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Transform.rotate(
                    angle: pi + 15,
                    child: Icon(
                      Icons.notifications_active_sharp,
                      size: 40,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${dataTimer.hour}" +
                      " : ${dataTimer.minute}" +
                      " : ${dataTimer.second}"+
                  " $time ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "${dataTimer.day}" +
                      "/${dataTimer.month}" +
                      "/${dataTimer.year}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  day,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

DateTime dataTimer = DateTime.now();
String time='';
String day = '';
