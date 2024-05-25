import 'package:api_binding/controller/listprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ListProvider>(context, listen: false).getData();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer<ListProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.empData.length,
            itemBuilder: (context, index) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(value.empData[index].empName!),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("${value.empData[index].empSal}"),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("${value.empData[index].empAge}"),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
