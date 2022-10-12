import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
           style: ElevatedButton.styleFrom(
                primary: Colors.red,
          ),
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
              
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (ctx) => new ThirdRoute()));
          },
          child: Text('Go screen 3!'),
        ),
      ),
    );
  }
}


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Column(
        children: [
          ElevatedButton(
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (ctx) => new FirstRoute()));
          },
            // padding: EdgeInsets.all(20.0),
            child: Text('Go to home!'),
             style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
             )
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go to back...'),
          style: ElevatedButton.styleFrom(
                primary: Colors.purple,
          )
        ),
        ],
      ),
    );
  }
}
