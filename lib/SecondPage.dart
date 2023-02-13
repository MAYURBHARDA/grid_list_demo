import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() {
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(15, (index) {
          return Center(
            child: Text(
              'item$index',
              style: Theme.of(context).textTheme.headline6,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_circle_left),
      ),
    );
  }
}
