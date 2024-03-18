import 'package:flutter/material.dart';

class DailyFlash31 extends StatelessWidget {
  const DailyFlash31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg")),
        ),
      ),
    );
  }
}
