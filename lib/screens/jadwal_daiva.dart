// jadwal_daiva.dart
import 'package:flutter/material.dart';

class JadwalScreen extends StatelessWidget {
  const JadwalScreen({super.key});

  final List<Map<String, String>> jadwalKuliah = const [
    {
      'hari': 'Senin',
      'matkul': 'Pemrograman Berbasis Mobile',
      'jam': '08:00 - 10:30',
      'kelas': 'A',
    },
    {
      'hari': 'Senin',
      'matkul': 'Ethical Hacking',
      'jam': '10:30 - 13:00',
      'kelas': 'A',
    },
    {
      'hari': 'Selasa',
      'matkul': 'Metodologi Penelitian',
      'jam': '11:20 - 13:50',
      'kelas': 'A',
    },
    {
      'hari': 'Selasa',
      'matkul': 'Prak. Pemrograman Berbasis Mobile',
      'jam': '13:50 - 16:20',
      'kelas': 'A',
    },
    {
      'hari': 'Kamis',
      'matkul': 'Kecerdasan Buatan',
      'jam': '08:10 - 10:30',
      'kelas': 'B',
    },
    {
      'hari': 'Kamis',
      'matkul': 'Computer Forensic',
      'jam': '10:30 - 13:00',
      'kelas': 'B',
    },
    {
      'hari': 'Kamis',
      'matkul': 'Prak. Jaringan Komputer',
      'jam': '15:30 - 18:00',
      'kelas': 'G',
    },
    {
      'hari': 'Jumat',
      'matkul': 'Geoinformatika',
      'jam': '08:10 - 09:40',
      'kelas': 'A',
    },
    {
      'hari': 'Jumat',
      'matkul': 'Rekayasa Perangkat Lunak',
      'jam': '13:00 - 15:30',
      'kelas': 'A',
    },
  ];

  Color getBackgroundColor(String hari) {
    switch (hari) {
      case 'Senin':
        return Colors.blue.shade100;
      case 'Selasa':
        return Colors.green.shade100;
      case 'Kamis':
        return Colors.purple.shade100;
      case 'Jumat':
        return Colors.orange.shade100;
      default:
        return Colors.grey.shade200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Kuliah - Daiva Baskoro Upangga'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: jadwalKuliah.length,
        itemBuilder: (context, index) {
          final jadwal = jadwalKuliah[index];
          return Card(
            color: getBackgroundColor(jadwal['hari']!),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.calendar_today_rounded, color: Colors.black54),
              title: Text(jadwal['matkul']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hari: ${jadwal['hari']}'),
                  Text('Jam: ${jadwal['jam']}'),
                  Text('Kelas: ${jadwal['kelas']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
