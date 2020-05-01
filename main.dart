import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Whatsapp"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Text("Camera Tab"),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Demo name"),
                subtitle: Text("Demo message"),
                leading: Icon(
                  Icons.account_circle,
                  size: 60.0,
                ),
              );
            },
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Demo name"),
                subtitle: Text("Demo message"),
                leading: Icon(
                  Icons.account_circle,
                  size: 60.0,
                ),
              );
            },
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Demo name"),
                subtitle: Text("Demo message"),
                leading: Icon(
                  Icons.call,
                  size: 60.0,
                ),
              );
            },
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}


