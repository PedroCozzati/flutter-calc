import 'package:aula3/src/home/home.dart';
import 'package:aula3/src/models/calcModel.dart';
import 'package:aula3/src/models/calcModel2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/controllers/counter_bloc.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(
      create: (context) => Saldo('0'),
    ),
    ChangeNotifierProvider(
      create: (context) => Saldo2('0'),
    ),
  ],
  child: App(),
));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      highContrastDarkTheme: ThemeData.dark(),
    );
  }
}




