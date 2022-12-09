import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = false;
  void OpenDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Center(
                child: Column(
              children: [Text("data")],
              //sampai sini
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // This bool value toggles the switch.
                    Switch(
                      value: isExpense,
                      activeColor: Colors.green,
                      activeTrackColor: Colors.green[200],
                      inactiveThumbColor: Colors.red,
                      onChanged: (bool value) {
                        setState(() {
                          isExpense = value;
                        });
                      },
                    )
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense)
                    ? Icon(Icons.upload, color: Colors.green)
                    : Icon(Icons.download, color: Colors.red),
                title: Text('makan siang'),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  SizedBox(width: 10),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: (isExpense)
                    ? Icon(Icons.upload, color: Colors.green)
                    : Icon(Icons.download, color: Colors.red),
                title: Text('makan siang'),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  SizedBox(width: 10),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                ]),
              ),
            ),
          )
        ],
      )),
    );
  }
}
