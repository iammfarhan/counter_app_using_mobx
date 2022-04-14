// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables

import 'package:counter_app_using_mobx/FeatureCounter/Presentation/Model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
 CounterScreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            "Counter App Using Mobx",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 50, right: 50),
        child: Column(
          children: [
            Center(
              child: Observer(builder: (context) {
                return Text(
                  "${context.watch<CounterModelStore>().counter}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterModelStore>().incrementcounter();
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterModelStore>().decrementcounter();
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.teal,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
