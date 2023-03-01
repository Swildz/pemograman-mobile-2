import 'package:flutter/material.dart';
import 'package:flutter_application_second/babDua/checkBilanganPrima.dart';
import 'package:flutter_application_second/babDua/latihan.dart';
import 'package:flutter_application_second/babDua/percobaanDua.dart';
import 'package:flutter_application_second/babDua/percobaanSatu.dart';
import 'package:flutter_application_second/babDua/tugas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Genap Ganjil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Praktikum Dua'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Welcome, Siddiq!'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Tugas Bab Dua'),
            ),
            ListTile(
              title: const Text('Percobaan Satu'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const percobaanSatu()));
              },
            ),
            ListTile(
              title: const Text('Percobaan Dua'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const percobaanDua()));
              },
            ),
            ListTile(
              title: const Text('Latihan'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const latihan()));
              },
            ),
            ListTile(
              title: const Text('Tugas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const tugas()));
              },
            ),
            ListTile(
              title: const Text('Check Bilangan Prima'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrimeNumberChecker()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
