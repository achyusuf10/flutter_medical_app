import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_widget_package/my_widget_package.dart';

class CustomAvatar extends StatelessWidget {
  final String url;
  final bool isCircle;
  final double height, width;

  const CustomAvatar({
    Key? key,
    required this.url,
    required this.height,
    required this.width,
    this.isCircle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (url.isEmpty)
        ? Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              color: Theme.of(context).primaryColor.withOpacity(0.04),
            ),
            child: Icon(
              Icons.camera_alt,
              color: Theme.of(context).primaryColor.withOpacity(0.6),
            ),
          )
        : CachedNetworkImage(
            width: width,
            height: height,
            imageUrl: url,
            placeholder: (context, url) => ShimmerWidget.noShape(
              width: width,
              height: height,
              child: Container(
                width: width,
                height: width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 0.2, color: Theme.of(context).primaryColor),
                shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                color: Theme.of(context).primaryColor.withOpacity(0.04),
              ),
              child: Icon(
                Icons.error,
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            ),
          );
  }
}
