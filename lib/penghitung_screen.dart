import 'package:flutter/material.dart';
import 'profil_screen.dart';

class PenghitungScreen extends StatefulWidget {
  const PenghitungScreen({super.key});

  @override
  State<PenghitungScreen> createState() => _PenghitungScreenState();
}

class _PenghitungScreenState extends State<PenghitungScreen> {
  int nilai = 0;

  void menghitung() {
    setState(() {
      nilai++;
    });
    print("Nilai sekarang: $nilai");
  }

  void pindahHalaman() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ProfilScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text("Penghitung"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hitung: $nilai",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: menghitung,
              child: const Text("Tambah Hitungan"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: pindahHalaman,
              child: const Text("Pindah ke Profil"),
            ),
          ],
        ),
      ),
    );
  }
}
