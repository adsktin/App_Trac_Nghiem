import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Lịch sử',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 100,
                    child: Card(
                      color: Color.fromARGB(255, 242, 255, 183),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ListTile(
                            leading: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "100 ",
                                          style: TextStyle(fontSize: 20)),
                                      WidgetSpan(
                                        child: Icon(Icons.star, size: 25),
                                      ),
                                    ],
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     Text(
                                //       '100',
                                //       style: TextStyle(
                                //           fontSize: 25,
                                //           fontWeight: FontWeight.bold),
                                //     ),
                                //     Icon(Icons.star)
                                //   ],
                                // ),
                                Text('Thể Thao'),
                              ],
                            ),
                            trailing: Text('10/12/2077'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
