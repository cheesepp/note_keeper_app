// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({
    Key? key,
  }) : super(key: key);

  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  static var _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleSmall;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            moveToLastScreen();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        child: ListView(
          children: [
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                style: textStyle,
                value: 'Low',
                onChanged: (valueSelectedByUser) {
                  setState(() {
                    debugPrint('User Selected $valueSelectedByUser');
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in Title Field');
                },
                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in Title Field');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Row(
                  children: [
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1,
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Save button clicked");
                        });
                      },
                    )),
                    Container(
                      width: 5,
                    ),
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Delete',
                        textScaleFactor: 1,
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Delete button clicked");
                        });
                      },
                    )),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }
}
