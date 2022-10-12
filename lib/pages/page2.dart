import 'package:flutter/material.dart';

void main() => runApp(const Page2());

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
        leading: IconButton(
          onPressed: () {
            if(Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(child: Text('Mirame ma desde la page 2'),),
    );
  }
}


