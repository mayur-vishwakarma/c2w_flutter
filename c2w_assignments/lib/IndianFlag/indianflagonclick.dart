import 'package:flutter/material.dart';

class IndianFlagOnCLick extends StatefulWidget {
  const IndianFlagOnCLick({super.key});

  @override
  State<IndianFlagOnCLick> createState() => _IndianFlagOnCLickState();
}

class _IndianFlagOnCLickState extends State<IndianFlagOnCLick> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Indian Flag',
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange.shade200,
          onPressed: () {
            setState(
              () {
                if (count > 5) {
                  count = 0;
                }
                count = count + 1;
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.orange.shade900,
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange,
              Colors.white,
              Colors.green,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (count >= 1)
              Container(
                height: 590,
                width: 20,
                color: Colors.grey,
              ),
            Column(
              children: [
                if (count >= 2)
                  Container(
                    height: 80,
                    width: 300,
                    color: Colors.orange,
                  ),
                if (count >= 3)
                  Container(
                      height: 80,
                      width: 300,
                      color: Colors.white,
                      child: count >= 4
                          ? Center(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/768px-Ashoka_Chakra.svg.png",
                              ),
                            )
                          : null),
                if (count >= 5)
                  Container(
                    height: 80,
                    width: 300,
                    color: Colors.green,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
