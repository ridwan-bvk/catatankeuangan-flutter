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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text("colum1", style: TextStyle(color: Colors.white)),
          //text board incom dan outcome
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text("colum2", style: TextStyle(color: Colors.white)),
                      Row(
                        children: [
                          // Text("Row1", style: TextStyle(color: Colors.white)),
                          Container(
                            child: Icon(
                              Icons.download,
                              color: Colors.blue,
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
                      Row(
                        children: [
                          // Text("Row2", style: TextStyle(color: Colors.white)),
                          Container(
                            child: Icon(
                              Icons.upload,
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
                              Text("Outcome",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12, color: Colors.white)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Rp.20.000.000",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12, color: Colors.white))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[800]),
            ),
          ),
          //text Transaction
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Transaction',
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          //list transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10, //buat bayangan card
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min, //agar rata kekanan
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text('Rp. 15.000'),
                subtitle: Text('Makan Siang'),
                leading: Container(
                  child: Icon(
                    Icons.download,
                    color: Colors.blue,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10, //buat bayangan card
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min, //agar rata kekanan
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text('Rp. 25.000.000'),
                subtitle: Text('Gaji Bulanan'),
                leading: Container(
                  child: Icon(
                    Icons.download,
                    color: Colors.blue,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
