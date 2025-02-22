import 'package:flutter/material.dart';

class DialogHelper {
  static void showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Input Tidak Valid'),
        content: Text('Harap masukkan angka yang valid!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
