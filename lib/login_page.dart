import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_routes_sidemenu_login/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
  }

  Widget _showInput(TextEditingController controller, String placeholder, bool isPassword) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: placeholder,
          filled: true,
          fillColor: Colors.pink[50],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintStyle: const TextStyle(color: Colors.black45),
        ),
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }

  void _showDialog(String message, Widget nextPage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.pink[50],
          title: Text(message, style: const TextStyle(color: Colors.black87)),
          actions: [
            TextButton(
              child: const Text('OK', style: TextStyle(color: Colors.pink)),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => nextPage));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Let’s Get Started!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 20),
            _showInput(_usernameController, 'Enter Username', false),
            _showInput(_passwordController, 'Enter Password', true),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                if (_usernameController.text == 'admin' && _passwordController.text == 'admin') {
                  _saveUsername();
                  _showDialog('Login Successful!', const HomePage());
                } else {
                  _showDialog('Incorrect Username or Password', const LoginPage());
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
