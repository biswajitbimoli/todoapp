import "package:flutter/material.dart";
import "package:todoapp/screens/notedetails.dart";

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return NoteDetails("Add Note");
          }));
        },
        tooltip: "Add Note",
        child: Icon(Icons.add),
      ),
      body: getListView(),
    );
  }

  ListView getListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
              ),
            trailing: Icon(Icons.delete, color: Colors.grey),
            title: Text("dummy text"),
            subtitle: Text("Dummy Date"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
            return NoteDetails("Edit Note");
          }));
            },
          ),
        );
      },
    );
  }
}