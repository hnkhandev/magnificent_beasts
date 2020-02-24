import 'package:flutter/material.dart';

class AddBeast extends StatefulWidget {
  @override
  _AddBeastState createState() => _AddBeastState();
}

class _AddBeastState extends State<AddBeast> {
  final List<TextEditingController> reminders = [
    TextEditingController(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              'ADD BEAST',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: reminders.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        if (index == 0)
                          Icon(
                            Icons.notifications,
                            color: Colors.grey[700],
                          ),
                        SizedBox(
                          width: index == 0 ? 16 : 41,
                        ),
                        Expanded(
                          child: Form(
                            child: TextFormField(
                              controller: reminders[index],
                              maxLines: null,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                hintText: 'Reminder',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        if (index != 0)
                          GestureDetector(
                            child: Icon(
                              Icons.close,
                              color: Colors.grey[700],
                            ),
                            onTap: () {
                              setState(() {
                                reminders.removeAt(index);
                              });
                            },
                          ),
                      ],
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(57, 4, 0, 4),
                  child: Text(
                    'Add Another Reminder',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    reminders.add(TextEditingController());
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
