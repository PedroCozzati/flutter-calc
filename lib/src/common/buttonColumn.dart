import 'package:aula3/src/colors/colors.dart';
import 'package:aula3/src/common/ButtonSpecial.dart';
import 'package:aula3/src/common/button.dart';
import 'package:aula3/src/common/controllers/counter_bloc.dart';
import 'package:aula3/src/common/controllers/counter_event.dart';
import 'package:aula3/src/models/calcModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonColumn extends StatefulWidget {
  @override
  _ButtonColumnState createState() => _ButtonColumnState();
}

class _ButtonColumnState extends State<ButtonColumn> {
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 400,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button('C','0',CustomColors.red),
                    Container(height: 20),
                    Button('7','7',CustomColors.gray),
                    Container(height: 20),
                    Button('4','4',CustomColors.gray),
                    Container(height: 20),
                    Button('1','1',CustomColors.gray),
                    Container(height: 20),
                    Button('()','(',CustomColors.gray),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button('V','',CustomColors.orange),
                    Container(height: 20),
                    Button('8','8',CustomColors.gray),
                    Container(height: 20),
                    Button('5','5',CustomColors.gray),
                    Container(height: 20),
                    Button('2','2',CustomColors.gray),
                    Container(height: 20),
                    Button('0','0',CustomColors.gray),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button('%','%',CustomColors.orange),
                    Container(height: 20),
                    Button('9','9',CustomColors.gray),
                    Container(height: 20),
                    Button('6','6',CustomColors.gray),
                    Container(height: 20),
                    Button('3','3',CustomColors.gray),
                    Container(height: 20),
                    Button(',',',',CustomColors.gray),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button('/','/',CustomColors.orange),
                    Container(height: 20),
                    Button('*','x',CustomColors.orange),
                    Container(height: 20),
                    Button('-','-',CustomColors.orange),
                    Container(height: 20),
                    Button('+','+',CustomColors.orange),
                    Container(height: 20),
                    Button('=','=',CustomColors.orange),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
