import 'package:flutter/material.dart';
import 'package:gardenpi/components/AppIcon.dart';
import 'dart:math';

class App {
  String title;
  String imageAsset;
  String route;

  App({
    this.title,
    this.imageAsset,
    this.route
  });
}

class AppList extends StatelessWidget {
  List<App> apps;
  PageController controller = PageController(
    initialPage: 0
  );

  AppList({this.apps});

  Widget buildAppIcon(BuildContext context, App app) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(app.route);
      },
      child: Center(
        child: AppIcon(
          title: app.title,
          imageAsset: app.imageAsset,
        ),
      ),
    );
  }

  List<Widget> buildPages(BuildContext context, List<App> apps) {
    var pages = <Widget>[];

    print(apps);

    for (int i = 0; i <= (apps.length / 8).floor(); i++) {
      pages.add(
        GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 0,
          crossAxisCount: 4,
          children: apps.sublist(i*8, min((i+1)*8, apps.length)).map((app) => buildAppIcon(context, app)).toList(),
        )
      );
    }

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: buildPages(context, this.apps),
      ),
    );
  }
}