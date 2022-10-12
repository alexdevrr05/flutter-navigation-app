import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/pages/page1.dart';
import 'package:navigation/pages/page2.dart';
import 'package:navigation/routes/routes.dart';
// import 'package:navigation/pages/drawer.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.window_rounded),
                title: Text('Page 1'),
                subtitle: Text('Go to page 1'),
                onTap: (() => Navigator.pushNamed(context, Routes.page1)),
              ),
              ListTile(
                leading: Icon(Icons.zoom_out),
                title: Text('Page 2'),
                subtitle: Text('Go to page 2'),
                onTap: (() => Navigator.pushNamed(context, Routes.page2)),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Navigation'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        // drawer: Drawer1(),
        body: Column(
          children: [
            Center(
              child: Text('Welcome to the system!'),
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Exit'),
              subtitle: Text('Exit of application'),
              onTap: (() => SystemNavigator.pop()),
            ),
          ],
        ));
  }
}
