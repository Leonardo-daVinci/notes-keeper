import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  final List<String> priorities = ['High', 'Mid', 'Low'];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController notecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    TextStyle textstyle = Theme.of(context).textTheme.subhead;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 15, left:10, right:10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text('Priority: ')),
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButtonFormField(
                    value: 'Low',
                    items: priorities.map((p){
                      return DropdownMenuItem(
                        value: p,
                        child: Text('$p')
                      );
                    }).toList(),
                    style: textstyle,
                    onChanged: (value){
                      setState(){
                      }
                    },
                  ),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: titlecontroller,
                style: textstyle,
                onChanged: (value){

                },
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: notecontroller,
                style: textstyle,
                onChanged: (value){

                },
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: textstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Save', textScaleFactor: 1.5),
                      onPressed: (){
                        setState(() {
                          
                        });
                      },
                    ),
                  ),

                  SizedBox(width: 5,),

                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Delete', textScaleFactor: 1.5),
                      onPressed: (){
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                ],
              ),
            )   
          ],
        )
      )
    );
  }
}