import 'package:app/singleton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                var inst = MySingleTon();
                print(inst);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
    );
  }
}
