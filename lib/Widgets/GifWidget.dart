import 'package:flutter/material.dart';

import 'package:gif_app/AppRouter/AppRouter.dart';
import 'package:gif_app/Model/Gif.dart';

import 'package:gif_app/Screens/GifScreen.dart';

// ignore: must_be_immutable
class GifWidget extends StatelessWidget {
  AppGif appGif;
  GifWidget({Key? key, required this.appGif}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          AppRouter.pushWidget(GifScreen(appGif: appGif));
        },
        child: Image.network(appGif.url ?? 'no url'));
  }
}
