import 'package:flutter/material.dart';
import 'package:tugas_mobile_1/utils/dialog_error.dart';

class MenuTotal extends StatefulWidget {
  @override
  _MenuTotalState createState() => _MenuTotalState();
}

class _MenuTotalState extends State<MenuTotal> {
  final TextEditingController _numberController = TextEditingController();
  int _hasil = 0;

  void _hitung() {
    int total = 0;
    String input = _numberController.text;
    int? angka = int.tryParse(input);

    if(angka == null){
      DialogHelper.showErrorDialog(context);
      return;
    }
    
    while (angka! > 0) {
      angka = (angka ~/ 10);
      total++;
    }

    setState(() {
      _hasil = total;
    });
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
            ),
            ElevatedButton(onPressed: _hitung, child: Text('Hitung Digit')),
            SizedBox(height: 20),
            Text('Digit: $_hasil', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
