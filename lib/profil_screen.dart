import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 186, 106),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Profil"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Image.asset("assets/kartun.png",height: 200,),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Ika Cahya Oktavia",
                  style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 18, 14, 14)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Alamat:", textAlign: TextAlign.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite, color: Color.fromARGB(255, 240, 138, 131)),
                Icon(Icons.favorite, color: Color.fromARGB(255, 239, 144, 137)),
                Icon(Icons.favorite, color: Color.fromARGB(255, 240, 142, 135)),
              ],
            ),
            const Card(
            child:  ListTile(
              leading: Icon(Icons.home),
              title: Text("Alamat"),
              subtitle: Text("Arabasta"),
              trailing: Icon(Icons.arrow_circle_right),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.local_pizza),
                title: Text("Hobi"),
                subtitle: Text("Membaca"),
                trailing: Icon(Icons.arrow_circle_right),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("Logout"),
                trailing: Icon(Icons.exit_to_app),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
