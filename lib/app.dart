import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/ui/pages/home.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;

  const AppWrapper({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: child ?? Container(),
    );
  }
}

class WebsiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: Home()
    );
  }
}
