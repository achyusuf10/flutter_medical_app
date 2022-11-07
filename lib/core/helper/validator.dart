String? wordValidation(String? value) {
  String pattern = r"[a-zA-Z `"
      '"'
      "]";
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return 'Harus terisi';
  } else if (value.isEmpty) {
    return 'Harus terisi';
  } else if (!regExp.hasMatch(value)) {
    return 'Hanya boleh terisi huruf saja';
  }
  return null;
}

String? numberValidation(String? value) {
  String pattern = r'^[0-9]+$';
  RegExp regExp = RegExp(pattern);
  if (value == null) {
    return 'Harus terisi';
  } else if (value.isEmpty) {
    return 'Harus terisi';
  } else if (!regExp.hasMatch(value)) {
    return 'Hanya boleh terisi angka';
  }
  return null;
}

String? nikValidation(String? value) {
  if (value!.length >= 17) {
    return 'NIK Hanya Boleh 16 Digit Angka';
  }
  return numberValidation(value);
}
