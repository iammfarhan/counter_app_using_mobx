// ignore_for_file: prefer_const_constructors

import 'package:counter_app_using_mobx/FeatureCounter/Presentation/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'FeatureCounter/Presentation/Model/counter_model.dart';

// void main() {
//   runApp(
//     const MyApp());
// }

void main() {
  runApp(MultiProvider(providers: [
    Provider<CounterModelStore>(
      create: (_) => CounterModelStore(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context){
        return MaterialApp(
        home: CounterScreen(),
      );
      }
    );
  }
}


