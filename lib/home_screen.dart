import 'package:flutter/material.dart';
import 'profil_screen.dart';
import 'penghitung_screen.dart';

class HomeScreen extends StatefulWidget {
  final String username; // Dikirim dari halaman login
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Data profil awal (bisa diedit di halaman profil)
  String nama = "Ika Cahya Oktavia";
  String alamat = "Arabasta";
  String hobi = "Membaca";
  String tanggalLahir = "10 Mei 2004";
  String jenisKelamin = "Perempuan";
  String email = "ika.cahya@example.com";
  String noTelepon = "081234567890";
  String status = "Mahasiswa";
  String jurusan = "Teknik Informatika";
  String universitas = "Universitas Duta Bangsa Surakarta";

  // Fungsi untuk membuka halaman profil
  void _bukaProfil() async {
    final hasil = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilScreen(
          nama: nama,
          alamat: alamat,
          hobi: hobi,
          tanggalLahir: tanggalLahir,
          jenisKelamin: jenisKelamin,
          email: email,
          noTelepon: noTelepon,
          status: status,
          jurusan: jurusan,
          universitas: universitas,
        ),
      ),
    );

    // Jika user menyimpan perubahan, update data
    if (hasil != null && hasil is Map<String, String>) {
      setState(() {
        nama = hasil['nama'] ?? nama;
        alamat = hasil['alamat'] ?? alamat;
        hobi = hasil['hobi'] ?? hobi;
        tanggalLahir = hasil['tanggalLahir'] ?? tanggalLahir;
        jenisKelamin = hasil['jenisKelamin'] ?? jenisKelamin;
        email = hasil['email'] ?? email;
        noTelepon = hasil['noTelepon'] ?? noTelepon;
        status = hasil['status'] ?? status;
        jurusan = hasil['jurusan'] ?? jurusan;
        universitas = hasil['universitas'] ?? universitas;
      });
    }
  }

  // Fungsi untuk membuka halaman penghitung
  void _bukaPenghitung() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PenghitungScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text("Selamat Datang, ${widget.username} 👋"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 100, color: Colors.blue),
            const SizedBox(height: 30),

            // Tombol ke halaman profil
            ElevatedButton.icon(
              onPressed: _bukaProfil,
              icon: const Icon(Icons.person),
              label: const Text("Profil Saya"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // Tombol ke halaman penghitung
            ElevatedButton.icon(
              onPressed: _bukaPenghitung,
              icon: const Icon(Icons.calculate),
              label: const Text("Penghitung"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
