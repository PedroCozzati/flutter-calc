import 'package:aula3/src/colors/colors.dart';
import 'package:aula3/src/common/controllers/counter_bloc.dart';
import 'package:aula3/src/common/controllers/counter_event.dart';
import 'package:aula3/src/common/screen.dart';
import 'package:aula3/src/home/home.dart';
import 'package:aula3/src/models/calcModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Button extends StatefulWidget {
  Button(this.label,this.valor,this.color);

  final String label;
  final String valor;
  final Color color;

  @override
  _ButtonState createState() => _ButtonState();
}
_atualizaEstado(context, valor) {
  Provider.of<Saldo>(context, listen: false).adiciona(valor);
}

int digit;
class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final _bloc = CounterBloc();
    return InkWell(
      onTap: ()=>_atualizaEstado(context, widget.valor),
      child: Container(
        child: Center(
            child: Text(
          widget.label,
          style: TextStyle(fontSize: 30),
        )),
        width: 75,
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: const Offset(
                1.0,
                -2.0,
              ),
              blurRadius: 0.8,
              spreadRadius: 0.3,
            ),
          ],
          color: widget.color,
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
