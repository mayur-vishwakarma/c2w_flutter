import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String imgUrl;
  ItemModel({required this.title, required this.imgUrl});
}

class DailyFlash84 extends StatefulWidget {
  const DailyFlash84({super.key});

  @override
  State<DailyFlash84> createState() => _DailyFlash84State();
}

class _DailyFlash84State extends State<DailyFlash84> {
  List<ItemModel> itemList = [
    ItemModel(
      title: "momos",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "pizza",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "pasta",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "burger",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "takoj",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "machurian",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
    ItemModel(
      title: "noodles",
      imgUrl:
          'https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(itemList[index].imgUrl),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(itemList[index].title)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
