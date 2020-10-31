// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: test(),
    ));

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Widget zTree
        title: Text('my first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
