import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Contador',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(title: 'Super Contador'),      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amberAccent[200],
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(        
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display3,              
            ),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.thumb_down),
                      onPressed: _decrementCounter,  
                      iconSize: 50.00, 
                      color: Colors.red,                   
                    )
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: _incrementCounter,
                      iconSize: 50.00,
                      color: Colors.green,
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset',
        child: new Icon(Icons.clear),
      ),
    );
  }
}
