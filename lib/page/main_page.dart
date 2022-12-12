import 'package:catatankeuangan/page/category_page.dart';
import 'package:catatankeuangan/page/home_page.dart';
import 'package:catatankeuangan/page/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [HomePage(), CategoryPage()];
  int CurentIndex = 0;
  void onTapTaped(int index) {
    setState(() {
      CurentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (CurentIndex == 1)
          ? PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Container(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
                child: Text("Categories",
                    style: GoogleFonts.montserrat(fontSize: 20)),
              )),
            )
          : CalendarAppBar(
              backButton: false,
              accent: Colors.red,
              locale: 'id',
              onDateChanged: (value) => print(value),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now(),
            ),
      body: _children[CurentIndex],
      floatingActionButton: Visibility(
        visible: (CurentIndex == 0) ? true : false,
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TransactionPage())
                  // .then((value){
                  //   setState(() {});
                  // });
                  );
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //biar sih floating nya ketengah
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                onTapTaped(0);
              },
              icon: Icon(Icons.home)),
          SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                onTapTaped(1);
              },
              icon: Icon(Icons.list))
        ],
      )),
    );
  }
}
