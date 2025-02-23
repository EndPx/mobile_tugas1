import 'package:flutter/material.dart';
import 'login.dart'; // Pastikan file ini ada

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Konfirmasi Logout"),
      content: Text("Apakah Anda yakin ingin keluar?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Tutup dialog
          child: Text("Batal"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Text("Logout"),
        ),
      ],
    );
  }
}
