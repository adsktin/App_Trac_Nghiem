import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 110, 255, 120),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 20, 0, 20),
              child: Text(
                'Ngày 15 tháng 10 năm 2022',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              width: 350,
              height: 300,
              color: Colors.blue,
              child: Image.asset('assets/images/yone_hoalinh.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                "Android 14",
                //textAlign: TextAlign.left,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 255, 140),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  maxLines: 20,
                  "Android 14 will have native support to satellite connection. Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection.Android 14 will have native support to satellite connection. Android 14 will have native support to satellite connection.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
