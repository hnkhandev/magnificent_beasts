import 'package:flutter/material.dart';

class AddBeast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Beast'),
        actions: <Widget>[
          Container(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Form(
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    maxLength: 30,
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: 'Name',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Stack(
                  fit: StackFit.passthrough,
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      height: 200,
                      color: Colors.grey,
                    ),
                    Text(
                      'ADD PHOTO',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onTap: () => null,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.grey[700],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Form(
                        child: TextFormField(
                          maxLines: null,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Bio',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.local_hospital,
                      color: Colors.grey[700],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Form(
                        child: TextFormField(
                          maxLines: null,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Medical History',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.notifications,
                      color: Colors.grey[700],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Form(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Reminders',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
