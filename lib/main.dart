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
      body:Row(
        children: [
  Expanded(
    
    flex: 3,
              Image.asset('assets/space1.jpg'),
  ),
              Expanded(
    
                flex: 3, 2,1
    
                children: <Widget>[
    
                Container(
    
                padding: EdgeInsets.all(30.0),
    
                color: Colors.cyan,
    
                child:Text('1'),
    
                ),
    
              
    
              Container(padding: EdgeInsets.all(30.0),
    
              color: Colors.cyan,
    
              child:Text('1'),),
    
              Container(padding: EdgeInsets.all(30.0),
    
              color: Colors.cyan,
    
              child:Text('1'),),
    
                          ],
    
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
