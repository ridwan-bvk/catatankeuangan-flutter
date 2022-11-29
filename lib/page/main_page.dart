import 'package:catatankeuangan/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        backButton: false,
        accent: Colors.red,
        locale: 'id',
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //biar sih floating nya ketengah
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.list))
        ],
      )),
    );
  }
}
