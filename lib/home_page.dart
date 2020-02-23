import 'package:flutter/material.dart';
import 'package:magnificent_beasts/add_beast.dart';

import 'beast.dart';

class HomePage extends StatelessWidget {
  final beast = Beast(name: 'Kitty', medicalHistory: 'Needs vaccination');
  final List<Beast> beasts = [];

  @override
  Widget build(BuildContext context) {
    beasts.add(beast);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Beasts',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: beasts.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text(
                          '${beasts[index].name}\n${beasts[index].medicalHistory}'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddBeast()),
          );
        },
      ),
    );
  }
}
