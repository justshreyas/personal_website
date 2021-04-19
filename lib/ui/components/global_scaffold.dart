import 'package:flutter/material.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget scrollChild;

  const GlobalScaffold({Key key, this.scrollChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      // GlobalAppBar(),
      body: 
      SingleChildScrollView(
        child: scrollChild??Container(),
      ),
    );
  }
}
