import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_widget_package/my_widget_package.dart';

class CustomBoxImage extends StatelessWidget {
  final VoidCallback onTap;
  final File? image;
  final String label;
  final String? urlImage;
  final double? width;
  final double aspectRatio;
  final double radius;
  final BoxFit boxFit;
  const CustomBoxImage({
    Key? key,
    required this.onTap,
    this.image,
    this.label = 'Tambahkan Foto',
    this.urlImage,
    this.width,
    this.aspectRatio = 16 / 9,
    this.radius = 8,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.04),
              borderRadius: BorderRadius.circular(radius)),
          width: width ?? double.infinity,
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: (image != null)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      image!,
                      width: width ?? double.infinity,
                      fit: boxFit,
                    ),
                  )
                : (urlImage == null || urlImage!.isEmpty)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.photo_camera,
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.6),
                            size: 64.h,
                          ),
                          Text(
                            label,
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(
                                            0.6,
                                          ),
                                    ),
                          )
                        ],
                      )
                    : CachedNetworkImage(
                        width: width ?? double.infinity,
                        imageUrl: urlImage ?? '',
                        placeholder: (context, url) => ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: ShimmerWidget.rectangular(
                            height: double.infinity,
                            width: width ?? double.infinity,
                            child: Container(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        imageBuilder: (context, imageProvider) => Container(
                          width: width ?? double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: boxFit,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          width: width ?? double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[500]!,
                          ),
                          child: const Icon(
                            Icons.error,
                            color: Colors.black,
                          ),
                        ),
                      ),
          )),
    );
  }
}
