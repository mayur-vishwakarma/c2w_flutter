import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    void update() {
      if (index <= 3) {
        setState(() {
          index = index + 1;
          print(index);
        });
      }
    }

    List<String> url = [
      "https://images.unsplash.com/photo-1596905904987-3dc12d4f0f33?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHJvc2UlMjBmbG93ZXJ8ZW58MHx8MHx8fDA%3D.jpg",
      "https://c1.wallpaperflare.com/preview/653/702/399/rose-flower-flowers-red-rose.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Stateful - Assignment 2"),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(url[index]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: update,
                    child: const Text("Press Here to change Image"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
