library show_loader_dialog;

import 'package:flutter/material.dart';

class ShowLoaderDialog {
  static show(BuildContext context,
          {String title = "Loading...",
          Color loadingColor = Colors.black,
          Color titleColor = Colors.black}) =>
      showLoaderDialog(context, title, loadingColor, titleColor);
  static hide(BuildContext context) => Navigator.pop(context);
}

showLoaderDialog(
    BuildContext context, String title, Color loadingColor, Color titleColor) {
  AlertDialog alert = AlertDialog(
    contentPadding: const EdgeInsets.all(10),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    content: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        children: [
          CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(loadingColor)),
          const SizedBox(width: 15),
          Text(title,
              style: TextStyle(color: titleColor, fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
