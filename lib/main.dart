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
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children:<Widget>[
            Row(
              children: <Widget>[
                Text('hello'),
                Text('World!')
              ]
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.cyan,
              child:Text('One'),
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.amber,
              child:Text('two'),
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.pinkAccent,
              child:Text('Three'),
            ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
