import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'daftar_barang_dummy.dart';
import 'halaman_bantuan.dart';
import 'halaman_login.dart'; // Import halaman login untuk kembali setelah logout

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HalamanLogin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context), // Panggil fungsi logout
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Bagian atas untuk bantuan
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    'Selamat Datang, admin!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Butuh Bantuan? Klik untuk pergi ke halaman Panduan dan Dukungan',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HalamanBantuan()),
                      );
                    },
                    child: const Text('Pergi ke Halaman Bantuan'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Daftar barang
            Expanded( // Tambahkan Expanded di sini untuk mencegah overflow
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: supermarketItemList.length,
                itemBuilder: (context, index) {
                  final item = supermarketItemList[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          item.imageUrls.last,
                          width: 100, // Ukuran gambar lebih kecil
                          height: 100, // Ukuran gambar lebih kecil
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(item.price),
                        Text('stok : ${item.stock}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
