import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String subtitle;
  ItemModel({required this.title, required this.subtitle});
}

class DailyFlash85 extends StatefulWidget {
  const DailyFlash85({super.key});

  @override
  State<DailyFlash85> createState() => _DailyFlash85State();
}

class _DailyFlash85State extends State<DailyFlash85> {
  List<ItemModel> itemList = [
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
    ItemModel(title: "title 1", subtitle: "some Text"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(itemList[index].title),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(itemList[index].subtitle),
                      ],
                    ),
                  ),
                  IconButton(
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.add))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
