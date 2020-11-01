import 'package:flutter/material.dart';
import 'package:Flutter/shared/listitem.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//first lets extend our app to SingleTickerProviderStateMixin
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

List<ListItem> listTiles= [
  ListItem(
    "https://images.unsplash.com/photo-1542838686-37da4a9fd1b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    lipsum.createWord(numWords: 6),
    lipsum.createWord(numWords: 2),
    "28 Jan 2020",
  ),
  ListItem(
    "https://images.unsplash.com/photo-1572949645841-094f3a9c4c94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    lipsum.createWord(numWords: 6),
    lipsum.createWord(numWords: 2),
    "03 Mar 2020",
  ),
  ListItem(
    "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    lipsum.createWord(numWords: 6),
    lipsum.createWord(numWords: 2),
    "14 Sep 2020",
  ),
  ListItem(
    "https://images.unsplash.com/photo-1584359983106-ef9366f27454?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    lipsum.createWord(numWords: 6),
    lipsum.createWord(numWords: 2),
    "16 May 2020",
  ),
  ListItem(
    "https://images.unsplash.com/photo-1498644035638-2c3357894b10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    lipsum.createWord(numWords: 6),
    lipsum.createWord(numWords: 2),
    "29 Feb 2020",
  ),
];




  List<Tab> tabList = [
    Tab(
      child: Text("Top"),
    ),
    Tab(
      child: Text("Popular"),
    ),
    Tab(
      child: Text("Trending"),
    ),
    Tab(
      child: Text("Editor Choice"),
    ),
    Tab(
      child: Text("Category"),
    ),
  ];

  // Now lets create Tab Controller
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabList.length);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 110.0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          centerTitle: true,
          title: Text(
            "News App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: TabBar(
              indicatorColor: Colors.black,
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: tabList,
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // We well just create  the Top container
            // You can fill the other container with what ever you want
            Padding(
              padding: EdgeInsets.all(8.0),
              //now we need to create a list of item class
              child: Container(
                child: ListView(

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
          ],
        ));
  }
}
