import 'package:flutter/material.dart';

import 'package:islami_app/my_theme_data.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int num = 0;
  double angle = 0;
  List<String>tesb=[
    "سبحان الله ",
    "الحمد لله",
    " الله اكبر ",
    "لا اله الا الله ",
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60, top: 10),
              child: Align(
                  alignment: Alignment.center,
                  child: Image(image: AssetImage("assets/images/head.png"))),
            ),
            Container(
              padding: EdgeInsets.only(top: 90),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform.rotate(
                    angle: angle,
                    child: InkWell(
                      onTap: () {
                        if (num==33){
                          if(index==3){
                            index=0;
                          }
                          else{
                            index++;
                          }

                          num=0;
                        }
                        num++;
                        angle+=20;
                        setState(() {

                        });
                      },
                      child: Image(
                          image: AssetImage("assets/images/boday.png")),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text("عدد التسبيحات "),
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: MyThemeData.primary,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            num.toString(),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text(
          tesb[index],
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: MyThemeData.primary,
              borderRadius: BorderRadius.circular(15)),
        )
      ],
    );
  }
}
