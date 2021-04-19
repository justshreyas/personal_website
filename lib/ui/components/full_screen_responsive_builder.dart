import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FullScreenResponsiveBuilder extends StatelessWidget {
  final Widget desktopChild;
  final Widget mobileChild;

  const FullScreenResponsiveBuilder({
    Key key,
    this.desktopChild,
    this.mobileChild,
  }) : super(key: key);

  factory FullScreenResponsiveBuilder.singleChild({
    final Key key,
    final Widget child,
  }) =>
      FullScreenResponsiveBuilder(
        key: key,
        desktopChild: child,
        mobileChild: child,
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, layout) {
        switch (layout.deviceScreenType) {
          case DeviceScreenType.desktop:
            return Container(
              width: layout.screenSize.width,
              height: layout.screenSize.height,
              child: desktopChild,
            );
            break;
          case DeviceScreenType.mobile:
            return Container(
              width: layout.screenSize.width,
              height: layout.screenSize.height,
              child: mobileChild,
            );
            break;

          default:
            return Container(
              width: layout.screenSize.width,
              height: layout.screenSize.height,
              child: mobileChild,
            );
            break;
        }
      },
    );
  }
}
