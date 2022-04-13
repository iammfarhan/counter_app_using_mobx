import 'package:mobx/mobx.dart';
part 'counter_model.g.dart';


class CounterModelStore = CounterModel with _$CounterModelStore;

abstract class CounterModel with Store{

@observable
int counter=0;

@action
  void incrementcounter() {
    counter++;
  }

@action
  void decrementcounter() {
    counter--;
  }
} 