import 'package:flutter/material.dart';

class EditProfilScreen extends StatefulWidget {
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

  const EditProfilScreen({
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
  State<EditProfilScreen> createState() => _EditProfilScreenState();
}

class _EditProfilScreenState extends State<EditProfilScreen> {
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController hobiController;
  late TextEditingController tanggalLahirController;
  late TextEditingController jenisKelaminController;
  late TextEditingController emailController;
  late TextEditingController noTeleponController;
  late TextEditingController statusController;
  late TextEditingController jurusanController;
  late TextEditingController universitasController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.nama);
    alamatController = TextEditingController(text: widget.alamat);
    hobiController = TextEditingController(text: widget.hobi);
    tanggalLahirController = TextEditingController(text: widget.tanggalLahir);
    jenisKelaminController = TextEditingController(text: widget.jenisKelamin);
    emailController = TextEditingController(text: widget.email);
    noTeleponController = TextEditingController(text: widget.noTelepon);
    statusController = TextEditingController(text: widget.status);
    jurusanController = TextEditingController(text: widget.jurusan);
    universitasController = TextEditingController(text: widget.universitas);
  }

  void simpanData() {
    Navigator.pop(context, {
      'nama': namaController.text,
      'alamat': alamatController.text,
      'hobi': hobiController.text,
      'tanggalLahir': tanggalLahirController.text,
      'jenisKelamin': jenisKelaminController.text,
      'email': emailController.text,
      'noTelepon': noTeleponController.text,
      'status': statusController.text,
      'jurusan': jurusanController.text,
      'universitas': universitasController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Edit Profil"),
        actions: [
          IconButton(
            onPressed: simpanData,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildTextField("Nama", namaController),
          _buildTextField("Alamat", alamatController),
          _buildTextField("Hobi", hobiController),
          _buildTextField("Tanggal Lahir", tanggalLahirController),
          _buildTextField("Jenis Kelamin", jenisKelaminController),
          _buildTextField("Email", emailController),
          _buildTextField("Nomor Telepon", noTeleponController),
          _buildTextField("Status", statusController),
          _buildTextField("Jurusan", jurusanController),
          _buildTextField("Universitas", universitasController),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: simpanData,
            icon: const Icon(Icons.check),
            label: const Text("Simpan Perubahan"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
