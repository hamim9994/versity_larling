import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //for increment
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // for decrement
  void _decrement() {
    setState(() {
      _counter--;
    });
  }
  // multiplying by 10
  void _multipling() {
    setState(() {
      _counter*=10;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton:  Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child:
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: FloatingActionButton(onPressed: _decrement,
              tooltip: "DECREMENT",
              child: Icon(Icons.minimize,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: FloatingActionButton(onPressed: _multipling,
              tooltip: "MULTIPLYING BY 10",
              child: Icon(Icons.star_border_purple500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}