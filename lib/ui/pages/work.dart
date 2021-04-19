import 'package:flutter/material.dart';
import 'package:justshreyas_personal_website/ui/components/full_screen_responsive_builder.dart';
import 'package:justshreyas_personal_website/ui/components/global_scaffold.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        scrollChild: FullScreenResponsiveBuilder.singleChild(
                  child: ListView.builder(
      itemBuilder: (_, index) => ListTile(
          leading: Icon(Icons.image),
          title: Text('Project Title'),
          subtitle: Text('Project Title'),
      ),
    ),
        ));
  }
}
