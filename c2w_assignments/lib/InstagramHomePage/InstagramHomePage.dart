import 'package:c2w_assignments/InstagramHomePage/PostWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:c2w_assignments/InstagramHomePage/StoryWidget.dart';

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({super.key});

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: GoogleFonts.sacramento(
            textStyle: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.amber.shade50),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.amber.shade50,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Colors.amber.shade50,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Storywidget(color: Colors.black),
                  Storywidget(color: Colors.green),
                  Storywidget(color: Colors.orange),
                  Storywidget(color: Colors.blue),
                  Storywidget(color: Colors.purple),
                  Storywidget(color: Colors.black),
                  Storywidget(color: Colors.green),
                  Storywidget(color: Colors.orange),
                  Storywidget(color: Colors.blue),
                  Storywidget(color: Colors.purple),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  PostWidget(
                    user: "Ajay Devgan",
                    imgurl:
                        "https://m.media-amazon.com/images/M/MV5BMTY0MDY2MDMwOV5BMl5BanBnXkFtZTgwNDE4MDM0OTE@._V1_FMjpg_UX1000_.jpg",
                  ),
                  PostWidget(
                    user: "Rashmika Mandanna",
                    imgurl:
                        "https://i.pinimg.com/originals/1e/ea/83/1eea83956d895f36f5c9728ac43828a5.jpg",
                  ),
                  PostWidget(
                    user: "Akshay Kumar",
                    imgurl:
                        "https://www.koimoi.com/wp-content/new-galleries/2022/08/akshay-kumar-on-flops-ups-and-downs-happen-in-everyones-life-ians-interview-0001.jpg ",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
