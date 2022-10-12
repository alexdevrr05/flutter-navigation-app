import 'package:flutter/material.dart';

void main() => runApp(const Page1());

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
      body: Center(child: Text('Mirame ma desde la page 1'),),
    );
    
  }
}


