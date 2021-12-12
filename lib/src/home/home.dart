import 'package:aula3/src/colors/colors.dart';
import 'package:aula3/src/common/Bar.dart';
import 'package:aula3/src/common/button.dart';
import 'package:aula3/src/common/buttonColumn.dart';
import 'package:aula3/src/common/screen.dart';
import 'package:aula3/src/common/sideBar.dart';
import 'package:aula3/src/models/calcModel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      endDrawer: Container(width: 100,child: NavDrawer()),
      backgroundColor: CustomColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10,),
          Screen(),
          SizedBox(height: 50,),
          Bar(),
          ButtonColumn(),
        ],
      ),
    );
  }
}
