import 'package:flutter/material.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.pink[100],
            child: const Text(
              'Menu',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildMenuItem(context, '🏠 Home', '/home'),
          _buildMenuItem(context, 'ℹ️ About', '/about'),
          _buildMenuItem(context, '🚪 Logout', '/'),
        ],
      ),
    );
  }

  // Fungsi untuk membangun ListTile yang lebih menarik
  Widget _buildMenuItem(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10), // Menambahkan efek rounded
          splashColor: Colors.pink[200], // Warna efek saat ditekan
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
          child: Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Membuat ListTile rounded
              color: Colors.pink[100], // Latar belakang untuk setiap menu
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
