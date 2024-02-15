import 'package:c2w_assignments/NetfilxHomePage/moviesWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NetflixHomePage extends StatefulWidget {
  const NetflixHomePage({super.key});

  @override
  State<NetflixHomePage> createState() {
    return _NetflixHomePageState();
  }
}

class _NetflixHomePageState extends State<NetflixHomePage> {
  int _currentindex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Center(
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text("Drawer")),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: ''),
        ],
      ),
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("NETFLIX",
              style: GoogleFonts.lora(
                color: Colors.red.shade700,
                fontSize: 30,
              )),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Latest",
                  style: GoogleFonts.fredoka(
                      fontSize: 25, color: Colors.amber.shade50),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Now Trending",
                  style: GoogleFonts.fredoka(
                      fontSize: 25, color: Colors.amber.shade50),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Action Movies",
                  style: GoogleFonts.fredoka(
                      fontSize: 25, color: Colors.amber.shade50),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg"),
                    MoviesWidget(
                        imgurl:
                            "https://i.pinimg.com/550x/38/78/92/38789293ce0c5265afcbe689deafe581.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
