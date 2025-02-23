import 'package:flutter/material.dart';

class DataKelompokPage extends StatelessWidget {
  final List<Map<String, String>> anggota = [
    {'nama': 'Muhammad Meidy Noor Al Barry', 'nim': '123220079'},
    {'nama': 'Josua Waruwu', 'nim': '123220083'},
    {'nama': 'Rayan Luqman Hakim', 'nim': '123220100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: anggota.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: ${anggota[index]['nama']}',
                      style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text('NIM: ${anggota[index]['nim']}',
                      style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
