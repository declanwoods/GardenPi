import 'package:flutter/material.dart';
import '../helpers/requests.dart' as req;

class HomePage extends StatefulWidget {
    HomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    Future screensaverTimer;
    bool renderScreensaver;

    Future<int> get() async {
        var res = await req.get("/api/v1");
        return res.statusCode;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
