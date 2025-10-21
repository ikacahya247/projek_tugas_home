import 'package:flutter/material.dart';
import 'edit_profil_screen.dart';

class ProfilScreen extends StatelessWidget {
  final String nama;
  final String alamat;
  final String hobi;
  final String tanggalLahir;
  final String jenisKelamin;
  final String email;
  final String noTelepon;
  final String status;
  final String jurusan;
  final String universitas;

  const ProfilScreen({
    super.key,
    required this.nama,
    required this.alamat,
    required this.hobi,
    required this.tanggalLahir,
    required this.jenisKelamin,
    required this.email,
    required this.noTelepon,
    required this.status,
    required this.jurusan,
    required this.universitas,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 186, 106),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Profil Saya"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.asset("assets/kartun.png", height: 180),
          const SizedBox(height: 10),
          Center(
            child: Text(
              nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 20),

          _buildInfo(Icons.home, "Alamat", alamat),
          _buildInfo(Icons.cake, "Tanggal Lahir", tanggalLahir),
          _buildInfo(Icons.people, "Jenis Kelamin", jenisKelamin),
          _buildInfo(Icons.email, "Email", email),
          _buildInfo(Icons.phone, "No Telepon", noTelepon),
          _buildInfo(Icons.school, "Status", status),
          _buildInfo(Icons.computer, "Jurusan", jurusan),
          _buildInfo(Icons.account_balance, "Universitas", universitas),
          _buildInfo(Icons.favorite, "Hobi", hobi),

          const SizedBox(height: 20),

          // Tombol Edit Profil
          ElevatedButton.icon(
            onPressed: () async {
              final hasil = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilScreen(
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

              // jika hasil tidak null, kirim balik ke HomeScreen
              if (hasil != null && context.mounted) {
                Navigator.pop(context, hasil);
              }
            },
            icon: const Icon(Icons.edit),
            label: const Text("Edit Profil"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }

  // widget kecil buat menampilkan setiap info profil
  Widget _buildInfo(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.green[800]),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
