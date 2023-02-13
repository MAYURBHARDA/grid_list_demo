import 'package:flutter/material.dart';
import 'package:grid_list_demo/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid List',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        addRepaintBoundaries: true,
        children: List.generate(
          100,
          (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline6,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return SecondPage();
            }),
          );
        },
        child: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}
