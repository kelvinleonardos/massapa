import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menunggu 3 detik sebelum berpindah ke MyApp2
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MyApp2()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.asset("images/logo.png"), // Gunakan Image.asset untuk memuat aset gambar
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset("images/unhas.png"), // Gunakan Image.asset untuk memuat aset gambar
          ),
        ),
      ),
    );
  }
}
