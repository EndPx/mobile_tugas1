import 'package:flutter/material.dart';
import 'package:tugas_mobile_1/utils/dialog_error.dart';

class menuGenapGanjil extends StatelessWidget {
  final TextEditingController _numberController = TextEditingController();

  void _cekGenapGanjil(BuildContext context) {
    String input = _numberController.text;
    int? angka = int.tryParse(input);

    if (angka == null) {
      DialogHelper.showErrorDialog(context);
      return;
    }

    String result = angka % 2 == 0 ? "Genap" : "Ganjil";
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Bilangan ini $result'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: _numberController,
                decoration: InputDecoration(labelText: 'Masukkan Angka'),
                keyboardType: TextInputType.number,
                autofocus: true),
            ElevatedButton(
                onPressed: () => _cekGenapGanjil(context),
                child: Text('Cek Ganjil/Genap')),
          ],
        ),
      ),
    );
  }
}
