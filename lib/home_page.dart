import 'package:flutter/material.dart';
import 'package:magnificent_beasts/add_beast.dart';
import 'beast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Beast> beasts = [];

  @override
  Widget build(BuildContext context) {
    for (Beast beast in beasts) print(beast.name);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Beasts',
        ),
      ),
      body: beasts.length == 0
          ? Center(
              child: Text('You have no beasts added!',
                  style: TextStyle(color: Colors.grey[700])))
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    itemCount: beasts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              ClipRRect(
                                child: Container(
                                  child: Image.file(
                                    beasts[index].photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15),
                                  right: Radius.circular(15),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  beasts[index].name,
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final createdBeast = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddBeast()),
          );
          setState(() {
            if (createdBeast != null) {
              beasts.add((createdBeast));
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
