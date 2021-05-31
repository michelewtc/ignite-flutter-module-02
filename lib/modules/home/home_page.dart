import 'package:flutter/material.dart';
import 'package:notes/modules/home/widgets/card/card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>["Primeiro item"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < notes.length; i++)
              CardWidget(notes: notes, index: i),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var description = await Navigator.pushNamed(context, "/create-note");
          if (description != null) {
            setState(() {
              notes.add(description as String);
            });
          }
        },
      ),
    );
  }
}
