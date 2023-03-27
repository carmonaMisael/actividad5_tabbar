import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pestaña tabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.black26),
            tabs: [
              Tab(icon: Icon(Icons.snowing)),
              Tab(icon: Icon(Icons.snowmobile)),
              Tab(icon: Icon(Icons.ice_skating_outlined)),
              Tab(icon: Icon(Icons.icecream)),
            ],
          ),
          centerTitle: true,
          title: Text('Heladeria'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.snowing, size: 350),
            Icon(Icons.snowmobile, size: 350),
            Icon(Icons.ice_skating_outlined, size: 350),
            Icon(Icons.icecream, size: 350),
          ],
        ),
      ),
    );
  } //Widget BuildContext
} //_MyHomePageState
