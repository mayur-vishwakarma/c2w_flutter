import 'package:flutter/material.dart';

class NetflixHomePage extends StatefulWidget {
  const NetflixHomePage({super.key});

  @override
  State<NetflixHomePage> createState() {
    return _NetflixHomePageState();
  }
}

class _NetflixHomePageState extends State<NetflixHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'fav'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Netflix",
            style: TextStyle(
              fontSize: 25,
              color: Colors.amber.shade50,
            ),
          ),
        ),
      ),
      body: Center(),
    );
  }
}
