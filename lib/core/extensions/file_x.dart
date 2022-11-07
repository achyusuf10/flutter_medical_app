import 'dart:io';

extension FileX on File {
  double get sizeInMB {
    int sizeInBytes = lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb;
  }
}
