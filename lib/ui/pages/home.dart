import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/ui/components/full_screen_responsive_builder.dart';
import 'package:personal_website/ui/components/global_scaffold.dart';
import 'package:personal_website/ui/pages/work.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        scrollChild: FullScreenResponsiveBuilder(
      mobileChild: Column(
        children: [
          Expanded(child: HeroInfo()),
          Expanded(child: HeroGif()),
        ],
      ),
      desktopChild: Row(
        children: [
          Expanded(child: HeroInfo()),
          Expanded(child: HeroGif()),
        ],
      ),
    ));
  }
}

class HeroGif extends StatelessWidget {
  final bool isLandscapeMode;

  const HeroGif({Key key, this.isLandscapeMode = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CachedNetworkImage(
            imageUrl:
                'https://media.giphy.com/media/dnXtOlzAhHwD8LN5BF/giphy.gif'));
  }
}

class HeroInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('justshreyas'),
          Text('a multidisciplinary designer'),
          MaterialButton(
            onPressed: () {
              print('CTA Tapped');
              Get.to<void>(Work());
            },
            child: Text('EXPLORE WORK'),
          ),
           MaterialButton(
            onPressed: () {
              print('CTA Tapped');
              Get.to<void>(Work());
            },
            child: Text('what more?'),
          ),
          
        ],
      ),
    );
  }
}
