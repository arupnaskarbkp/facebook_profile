import 'package:flutter/material.dart';
import '../resource/assets_manager.dart';

class MyImage {
  static Widget imageN({
      required String url,
      double height = 0.0,
      double elevation = 0.0,
      width = 0.0,
      BorderRadius radius = BorderRadius.zero,
      BoxFit fit = BoxFit.cover,
      Color backgroundColor = Colors.white}) {
    return Material(
      color: backgroundColor,
      elevation: elevation,
      borderRadius: radius,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: radius),
        child:  url.isNotEmpty
            ? ClipRRect(
                borderRadius: radius,
                child: FadeInImage.assetNetwork(
                  placeholder: ImageAssets.logo,
                  image: url,
                  height: height,
                  imageErrorBuilder: (context, object, stackTrace) {
                    return Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(borderRadius: radius, image: const DecorationImage(image: AssetImage(ImageAssets.logo), fit: BoxFit.cover)),
                    );
                  },
                  width: width,
                  fit: fit,
                ),
              )
            : Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: radius,
                  image: const DecorationImage(
                    image: AssetImage(ImageAssets.logo),
                  ),
                ),
              ),
      ),
    );
  }
}
