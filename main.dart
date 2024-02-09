import 'package:flutter/material.dart';
import 'package:guryosamo/pages/bilowga.dart';
import 'package:guryosamo/pages/codsi.dart';
import 'package:guryosamo/pages/maraynta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  void _selectedIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  List pages = [
    const Bilowga(),
    const Codsi(),
    const Maraynta(),
    // const Maaraynta(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            elevation: 0,
            currentIndex: index,
            onTap: _selectedIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Bilawga'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_open_outlined), label: 'Codsi'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Maraynta'),
            ]),
      ),
    );
  }
}
