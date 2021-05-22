import 'package:flutter/material.dart';

class CreateNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Note"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              maxLines: 10,
              maxLength: 240,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
