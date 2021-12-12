import 'package:aula3/src/colors/colors.dart';
import 'package:aula3/src/common/button.dart';
import 'package:aula3/src/models/calcModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/counter_bloc.dart';

class Screen extends StatefulWidget {
  final double maxSize = 500;

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _bloc = CounterBloc();
  List<int> lista = [1,2];
  String result;

  @override
  Widget build(BuildContext context) {
    Button button;
    return Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Container(
          width: widget.maxSize,
          height: 150,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: CustomColors.green,
              offset: const Offset(
                2.0,
                -2.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 5.0,
            ),
          ], color: CustomColors.gray, borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Consumer<Saldo>(builder: (context, valor, child) {
              return Text(
                result = valor.toString()+ valor.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Pixeboy',
                    color: CustomColors.darkGray),
              );
            }),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
