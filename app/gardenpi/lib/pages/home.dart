import 'package:flutter/material.dart';
import 'package:home_indicator/home_indicator.dart';

import '../helpers/requests.dart' as req;
import 'package:gardenpi/components/AppList.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future screensaverTimer;
  bool renderScreensaver;

  @override
  void initState() {
    super.initState();
    hideHome();
  }
  
  void hideHome() async {
    await HomeIndicator.hide();
  }

  Future<int> get() async {
    var res = await req.get("/api/v1");
    return res.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: AppList(
          apps: [
            App(
              title: "Power",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Lights",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Sprinklers",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Weather",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Temperatures",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Sonos",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Aircon",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "Garage",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
            App(
              title: "test",
              route: "/",
              imageAsset: "assets/images/icons/icon.png"
            ),
          ],
        ),
//                child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                        RaisedButton(
//                            child: Text("test"),
//                            onPressed: () {
//                                Navigator.pushNamed(context, '/settings');
//                            },
//                        ),
//                        RaisedButton(
//                            child: Text("get"),
//                            onPressed: () async {
//                                int status = await get();
//                                print(status);
//                            },
//                        )
//                    ],
//                ),
      ),
    );
  }
}
