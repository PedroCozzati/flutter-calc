import 'dart:async';

import 'package:aula3/src/common/button.dart';

import 'counter_event.dart';

class CounterBloc{
  int _counter = 0;
  Button button;

  final _counterStateController = StreamController<int>();
  StreamSink<int> get _inCounter => _counterStateController.sink;
  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<CounterEvent>();
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;
  
  CounterBloc(){
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event){
    if(event is ClickButtonEvent){
      _counter = 2;
    }
    if(event is IncrementEvent){
      _counter++;
    }
    if(event is MultiEvent){
      _counter= _counter*_counter;
    }
    if(event is DecrementEvent){
      _counter--;
    }
    _inCounter.add(_counter);
  }

  void dispose(){
    _counterStateController.close();
    _counterEventController.close();
  }
}