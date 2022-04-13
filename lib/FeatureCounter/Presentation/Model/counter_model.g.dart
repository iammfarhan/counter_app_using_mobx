// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterModelStore on CounterModel, Store {
  final _$counterAtom = Atom(name: 'CounterModel.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$CounterModelActionController = ActionController(name: 'CounterModel');

  @override
  void incrementcounter() {
    final _$actionInfo = _$CounterModelActionController.startAction(
        name: 'CounterModel.incrementcounter');
    try {
      return super.incrementcounter();
    } finally {
      _$CounterModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementcounter() {
    final _$actionInfo = _$CounterModelActionController.startAction(
        name: 'CounterModel.decrementcounter');
    try {
      return super.decrementcounter();
    } finally {
      _$CounterModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
