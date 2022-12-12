import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class Screen extends StatelessWidget {
  const Screen(
      {super.key, required this.count, required this.sharedPreferences});

  final int count;

  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
        body: Center(
          
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(count.toString()),
          ElevatedButton(
              onPressed: () {
                bool theme = sharedPreferences.getBool("theme") ?? false;
                sharedPreferences.clear();
                sharedPreferences.setBool("theme", theme);
              },
              child: const Text("очистка"))
        ],
      ),
    ));
  }
}
