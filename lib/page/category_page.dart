import 'package:catatankeuangan/database/category.dart';
import 'package:catatankeuangan/database/database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = false;
  //variabel db 1
  final AppDb database = AppDb();

  //db 3
  TextEditingController categoryNameController = TextEditingController();

  //db 2
  Future insert(String name, int type) async {
    DateTime now = DateTime.now();
    final row = await database.into(database.categories).insertReturning(
        CategoriesCompanion.insert(
            name: name, type: type, creatAt: now, updateAt: now));
    print('data insert' + row.toString());
  }

  void OpenDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text((isExpense) ? "Income" : "OutCome",
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: (isExpense) ? Colors.green : Colors.red)),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      insert(categoryNameController.text, isExpense ? 1 : 2);
                      setState(() {}); //agar data refresh

                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                    child: Text('Save'),
                  )
                ],
                //sampai sini
              )),
            ),
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
                    ),
                    Text((isExpense) ? 'Pengeluaran' : 'Pemasukan',
                        style: GoogleFonts.montserrat()),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      OpenDialog();
                    },
                    icon: Icon(Icons.add))
              ],
            ),
          ),
          // FutureBuilder(context: builder)
          /* //UI akan diganti ke future database
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
          ), */
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
