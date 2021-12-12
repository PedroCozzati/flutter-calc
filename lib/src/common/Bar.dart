import 'package:aula3/src/colors/colors.dart';
import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({Key key}) : super(key: key);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 100,
              height: 10,
              color: CustomColors.darkGray,
              child: Center(
                child: Text(
                  '189/29',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pixeboy',
                      color: CustomColors.gray),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: 120,
              height: 10,
              color: CustomColors.darkGray,
              child: Center(
                child: Text(
                  '9080-78',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pixeboy',
                      color: CustomColors.gray),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: 120,
              height: 10,
              color: CustomColors.darkGray,
              child: Center(
                child: Text(
                  '0989+89',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pixeboy',
                      color: CustomColors.gray),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: 100,
              height: 10,
              color: CustomColors.darkGray,
              child: Center(
                child: Text(
                  '13*672',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pixeboy',
                      color: CustomColors.gray),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: 130,
              height: 10,
              color: CustomColors.darkGray,
              child: Center(
                child: Text(
                  '88+9808',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pixeboy',
                      color: CustomColors.gray),
                ),
              ),
            ),
          ],
        ),

    );
  }
}
