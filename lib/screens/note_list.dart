import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Keeper'),
        centerTitle: true,
        elevation: 0.0,
      ),

      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
        tooltip: 'Add new note',
      )
    );
  }

  ListView getNoteListView(){
    TextStyle titlestyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) => Card(
        color: Colors.white,
        elevation: 2.0,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Icon(Icons.keyboard_arrow_right),
          ),
          title: Text('New Note', style: titlestyle),
          subtitle: Text('Dummy date'),
          trailing: Icon(Icons.delete, color: Colors.grey),
          onTap: (){

          },
        ),
      ),
    );
  }

}