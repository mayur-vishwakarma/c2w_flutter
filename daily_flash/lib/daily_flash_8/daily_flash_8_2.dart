import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String imgUrl;
  ItemModel({required this.title, required this.imgUrl});
}

class DailyFlash82 extends StatefulWidget {
  const DailyFlash82({super.key});

  @override
  State<DailyFlash82> createState() => _DailyFlash82State();
}

class _DailyFlash82State extends State<DailyFlash82> {
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
        title: const Text("Daily flash"),
      ),
      body: Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      itemList[index].imgUrl,
                      height: 100,
                      width: 200,
                    ),
                    const SizedBox(
                      height: 10,
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
