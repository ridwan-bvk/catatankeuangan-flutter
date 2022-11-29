import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.download,
                      color: Colors.red,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Income",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Rp.10.000.000",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white))
                    ],
                  )
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[800]),
            ),
          )
        ],
      )),
    );
  }
}
