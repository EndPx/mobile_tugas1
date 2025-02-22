import 'package:flutter/material.dart';
import 'package:tugas_mobile_1/utils/dialog_error.dart';

class MenuTambahKurang extends StatefulWidget {
  @override
  _MenuTambahKurangState createState() => _MenuTambahKurangState();
}

class _MenuTambahKurangState extends State<MenuTambahKurang> {
  final TextEditingController _numberController1 = TextEditingController();
  final TextEditingController _numberController2 = TextEditingController();
  int? _angka1 = 0;
  int? _angka2 = 0;
  int _hasil = 0;

  void _hitungTambah() {
    if(!_validate()) return;
    setState(() {
      _hasil = _angka1! + _angka2!;
    });
  }

  void _hitungKurang() {
    if(!_validate()) return;
    setState(() {
      _hasil = _angka1! - _angka2!;
    });
  }

  bool _validate() {
    String input1 = _numberController1.text;
    _angka1 = int.tryParse(input1);
    String input2 = _numberController2.text;
    _angka2 = int.tryParse(input2);
    if (_angka1 == null || _angka2 == null) {
      DialogHelper.showErrorDialog(context);
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController1,
              decoration: InputDecoration(labelText: 'Angka Pertama'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _numberController2,
              decoration: InputDecoration(labelText: 'Angka Kedua'),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _hitungTambah, child: Text('Tambah')),
                ElevatedButton(onPressed: _hitungKurang, child: Text('Kurang')),
              ],
            ),
            SizedBox(height: 20),
            Text('Hasil: $_hasil', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
