import 'package:flutter/material.dart';
import 'package:my_widget_package/my_widget_package.dart';
import '../themes/text_style.dart';

class UiUtils {
  static void showCircularLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: (context),
      builder: (BuildContext context) {
        return WillPopScope(
          child: const CircularLoading(),
          onWillPop: () => Future.value(false),
        );
      },
    );
  }

  static Future<dynamic> showDialogChoice({
    required BuildContext context,
    required String title,
    required String desc,
    String positiveBtnText = 'Ya',
    String negativeBtnText = 'Batal',
    required Function() onTapPositiveBtn,
    Function()? onTapNegativeBtn,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return DialogChoice(
            title: title,
            desc: desc,
            positiveBtnText: positiveBtnText,
            negativeBtnText: negativeBtnText,
            onTapPositiveBtn: onTapPositiveBtn,
            onTapNegativeBtn: onTapNegativeBtn,
            buttonColor: Theme.of(context).primaryColor,
            descStyle: openSansRegular,
            negativeStyle: openSansRegular,
            positiveStyle: openSansRegular,
            titleStyle: openSansSemiBold,
          );
        });
  }

  static void showDialogNotif(
      {required BuildContext context,
      required String message,
      required NotifType notifType,
      Function? additionalOnNegativeTap,
      bool onWillPopScope = false}) {
    showDialog(
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () => Future.value(onWillPopScope),
          child: DialogNotif(
            notifType: notifType,
            message: message,
            additionalOnNegativeTap: additionalOnNegativeTap ?? () {},
            titleStyle: openSansSemiBold,
            descStyle: openSansRegular,
            closeSytyle: openSansRegular,
          ),
        );
      },
    );
  }

  static void showDialogPickYear({
    required BuildContext context,
    required Function(DateTime dateTime) onChanged,
    required DateTime selectedDate,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Pilih Tahun"),
          content: SizedBox(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(2020, 1),
              lastDate: DateTime(DateTime.now().year + 6, 1),
              initialDate: DateTime.now(),
              selectedDate: selectedDate,
              onChanged: onChanged,
            ),
          ),
        );
      },
    );
  }

  static void showDialogDatePicker({
    required BuildContext context,
    required DateTime selectedDate,
    Function? additionalFunction,
  }) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020, 1),
      lastDate: DateTime(DateTime.now().year + 6, 1),
    ).then((value) {
      if (value == null) return;
      selectedDate = value;
      if (additionalFunction == null) return;
      additionalFunction();
    });
  }

  static void pickImageBottomSheet({
    required BuildContext context,
    required Function onTapCamera,
    required Function onTapGallery,
  }) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera_alt, color: Colors.black),
                title: Text(
                  'Ambil Dari Kamera',
                  style: openSansRegular.copyWith(fontSize: 13),
                ),
                onTap: () {
                  Navigator.pop(context);
                  onTapCamera();
                },
              ),
              ListTile(
                leading: const Icon(Icons.image, color: Colors.black),
                title: Text(
                  'Ambil Dari Galeri',
                  style: openSansRegular.copyWith(fontSize: 13),
                ),
                onTap: () {
                  Navigator.pop(context);
                  onTapGallery();
                },
              ),
            ],
          );
        });
  }
}
