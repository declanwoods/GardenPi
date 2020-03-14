import 'package:flutter/material.dart';
import 'pages/settings.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(GardenPiApp());
}

class GardenPiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GardenPi',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MainPage(title: 'Home'),
      routes: {
        "/settings": (context) => SettingsPage(title: 'Settings'),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;

  Dio dio = new Dio();

  Future<int> get() async {
    var res = await dio.get("http://localhost:8080/api/v1");
    return res.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline,
            ),
            RaisedButton(
              child: Text("test"),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            RaisedButton(
              child: Text("get"),
              onPressed: () async {
                int status = await get();
                print(status);
              },
            )
          ],
        ),
      ),
    );
  }
}
