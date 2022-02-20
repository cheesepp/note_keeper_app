import 'package:flutter/material.dart';
import 'package:note_keeper_app/screens/note_detail.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key,}) : super(key: key);

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  var count = 0;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
          navigateToDetail('Add Note');
        },
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle? titleStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('Dummy', style: titleStyle),
            subtitle: Text('Dummy'),
            trailing: Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint("ListTile Tapped");
              navigateToDetail('Edit Note');
            },
          ),
        );
      },
    );
  }

  void navigateToDetail(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail();
    }));
  }
}
