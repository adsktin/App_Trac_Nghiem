import 'package:app_trac_nghiem/home/detail_news.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 110, 255, 120),
              Color.fromARGB(255, 104, 235, 255),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: ListView(children: <Widget>[
        Column(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Tin Tức Mới',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: const [
          //       Text('Công Nghệ',
          //           style:
          //               TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Text(
                    'Ngày ' +
                        now.day.toString() +
                        " Tháng " +
                        now.month.toString() +
                        " Năm " +
                        now.year.toString(),
                    style: TextStyle()),
              ],
            ),
          ),
        ]),
        SingleChildScrollView(
          child: Center(
            child: ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return const Detail();
                          }));
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment
                                  .center, // Center children in the Stack
                              children: [
                                Container(
                                  width: 350,
                                  height: 300,
                                  color: Colors.blue,
                                  child: Image.asset(
                                      'assets/images/yone_hoalinh.png',
                                      fit: BoxFit.cover),
                                ),
                                Positioned(
                                  top: 250,
                                  left: 20,
                                  right: 20,
                                  bottom: -40,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 243, 255, 140),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 10, 10),
                                      child: Text(
                                        maxLines: 2,
                                        "Android 14 will have native support to satellite connection.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ]),
    );
  } // News
}
