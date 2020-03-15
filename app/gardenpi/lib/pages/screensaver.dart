import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../helpers/requests.dart' as req;
import 'dart:async';

class ScreensaverPage extends StatefulWidget {
    ScreensaverPage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _ScreensaverPageState createState() => _ScreensaverPageState();
}

class _ScreensaverPageState extends State<ScreensaverPage> {
    Timer t;
    String time = createTimeString();

    static String createTimeString() {
        return new Jiffy(new DateTime.now()).format("h:mm a");
    }

    @override
    Widget build(BuildContext context) {
        if (t != null) {
            t.cancel();
        }

        t = Timer.periodic(Duration(seconds: 1), (timer) {
            setState(() {
              time = createTimeString();
            });
        });

        return Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Text(
                                time,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 72
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
