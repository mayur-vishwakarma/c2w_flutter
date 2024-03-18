import 'package:flutter/material.dart';

class DailyFlash53 extends StatelessWidget {
  const DailyFlash53({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.network(
                width: 250,
                height: 250,
                "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(20, 20),
                          blurRadius: 20,
                          spreadRadius: 1)
                    ]),
                padding: const EdgeInsets.all(15),
                child: const Text("Mayur Vishwakarma")),
          ],
        ),
      ),
    );
  }
}
