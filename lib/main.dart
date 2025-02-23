import 'package:flutter/material.dart';
import 'data_anggota.dart';
import 'menu_tambah_kurang.dart';
import 'menu_ganjil_genap.dart';
import 'menu_total_angka.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Dart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _selectedPage = DataKelompokPage();
  String _title = 'Data Kelompok';

  void _changePage(Widget page, String title) {
    setState(() {
      _selectedPage = page;
      _title = title;
    });
    Navigator.pop(context); // Menutup drawer setelah memilih menu
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListTile(
              title: Text('Data Kelompok'),
              onTap: () => _changePage(DataKelompokPage(), 'Data Kelompok'),
            ),
            ListTile(
              title: Text('Penjumlahan & Pengurangan'),
              onTap: () =>
                  _changePage(MenuTambahKurang(), 'Penjumlahan & Pengurangan'),
            ),
            ListTile(
              title: Text('Cek Ganjil/Genap'),
              onTap: () => _changePage(menuGenapGanjil(), 'Cek Ganjil/Genap'),
            ),
            ListTile(
              title: Text('Jumlah Total Angka'),
              onTap: () => _changePage(MenuTotal(), 'Jumlah Total Angka'),
            ),
          ],
        ),
      ),
      body: _selectedPage,
    );
  }
}
