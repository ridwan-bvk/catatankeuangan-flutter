import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isExpense = false;
  List<String> list = ['makan dan minum', 'jajan'];
  late String DropdownValue = list.first;
  TextEditingController DateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("add transaction")),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
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
              Text(
                (isExpense) ? "Expense" : "Income",
                style: GoogleFonts.montserrat(fontSize: 14),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Amount'),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Category',
              style: GoogleFonts.montserrat(),
            ),
          ),
          // DropdownButton<Category>(isExpanded: true,icon: Icon(Icons.arrow_downward),)
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton(
                value: DropdownValue,
                isExpanded: true, //agar ngelebar ke tengah
                icon: Icon(Icons.arrow_downward),
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: GoogleFonts.montserrat(fontSize: 12)),
                  );
                }).toList(),
                onChanged: (String? value) {}),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
                controller: DateController,
                readOnly: true,
                decoration: InputDecoration(labelText: "Enter Date"),
                onTap: () async {
                  DateTime? PickDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));

                  if (PickDate != null) {
                    String FormattedDate =
                        DateFormat('yyyy-MM-dd').format(PickDate); //format tgl
                    DateController.text = FormattedDate;
                  }
                  ;
                }),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: "Description"),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            ),
          )
        ],
      ))),
    );
  }
}
