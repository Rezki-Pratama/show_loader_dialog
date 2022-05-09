library example_package;

import 'package:flutter/material.dart';

/// A Calculator.
class ShowLoaderDialog {
  void show(BuildContext context) => showLoaderDialog(context);
  void hide(BuildContext context) => Navigator.pop(context);
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    contentPadding: const EdgeInsets.all(10),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    content: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        children: [
          CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).backgroundColor)),
          const SizedBox(width: 15),
          Text("Loading...",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.bold)),
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
