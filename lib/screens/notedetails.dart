import "package:flutter/material.dart";

class NoteDetails extends StatefulWidget {
  String appBarTitle;
  NoteDetails(this.appBarTitle);
  @override
  State<StatefulWidget> createState() {
    return NoteDetailsState(this.appBarTitle);
  }
}
class NoteDetailsState extends State<NoteDetails> {

  static var _priorities = ["High", "Low"];
  String appBarTitle;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  NoteDetailsState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle),
      
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget> [
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String ditem) {
                  return DropdownMenuItem<String> (
                    value: ditem,
                    child: Text(ditem),
                  );
                }).toList(),
                style: textStyle,
                value: "Low",
                onChanged: (value) {
                  setState((){});
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Title",
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              ),
              Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Description",
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom:15.0),
                child: Row(
                  children: <Widget> [
                    Expanded(
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text("Save", textScaleFactor: 1.5),
                      ),
                    ),
                    Container(width: 15.0),
                    Expanded(
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text("Delete", textScaleFactor: 1.5),
                      ),
                    ),
                  ]
                ),
              ),
          ],
        ),
        ),
        
    );
  }
}