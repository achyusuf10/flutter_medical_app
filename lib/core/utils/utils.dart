import 'dart:io';
import 'package:flutter/material.dart';
import '../themes/color_style.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import '../extensions/file_x.dart';

class Utils {
  static Future<File> compressImage({
    required File file,
    double maxSizeInMB = 0.19,
  }) async {
    File? result;
    int quality = 85;
    int ratio = 1;
    if (file.sizeInMB < maxSizeInMB) return file;
    final newPath = p.join((await getTemporaryDirectory()).path,
        '${DateTime.now()}.${p.extension(file.path)}');
    do {
      result = await FlutterImageCompress.compressAndGetFile(
        file.path,
        newPath,
        quality: quality,
        keepExif: true,
        minHeight: 1000,
        minWidth: 1000,
      );
      if (ratio % 2 == 0) {
        ratio = 1;
      } else {
        ratio = 2;
      }
      // print(ratio);
      quality = quality - ratio * 2;
      // print(quality);
    } while (result!.sizeInMB > maxSizeInMB);
    // print('Size Photo Setelah Dicompress ${result.sizeInMB}');
    return result;
  }

  static Future<File?> cropImage(File image) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Potong Foto',
          toolbarColor: green1,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: true,
        ),
      ],
    );

    return croppedFile == null ? null : File(croppedFile.path);
  }
}
