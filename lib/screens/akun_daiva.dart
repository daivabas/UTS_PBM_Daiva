// akun_daiva.dart
import 'package:flutter/material.dart';

class AkunDaivaWithThemeToggle extends StatelessWidget {
  final VoidCallback onToggleTheme;
  const AkunDaivaWithThemeToggle({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Daiva Baskoro Upangga',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('NIM: 4522210045'),
                const Text('Program Studi: S1 Teknik Informatika'),
                const Text('Tahun Akademik: Genap 2024/2025'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Ganti Tema:', style: TextStyle(fontWeight: FontWeight.bold)),
                    Switch(
                      value: Theme.of(context).brightness == Brightness.dark,
                      onChanged: (_) => onToggleTheme(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}