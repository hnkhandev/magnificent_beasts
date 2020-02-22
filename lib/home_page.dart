import 'package:flutter/material.dart';

import 'beast.dart';

class HomePage extends StatelessWidget {
  final List<Beast> beasts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Beasts',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: beasts.length,
        itemBuilder: (context, index) {
          return null;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
      ),
    );
  }
}
