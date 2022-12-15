import 'package:app_trac_nghiem/models/news_model.dart';
import 'package:app_trac_nghiem/services/news_service.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({
    super.key,
    required this.id,
  });
  final int id;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DateTime now = DateTime.now();

  Future<List<News>> _fecthNews() async {
    var data = NewsService.fetchNews();
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
            child: AutoSizeText('Thông tin chi tiết',
                maxFontSize: 35,
                minFontSize: 25,
                style: TextStyle(color: Colors.black)),
          ),
        ),
        body: Center(
          child: FutureBuilder(
            future: _fecthNews(),
            builder: ((context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(70, 20, 0, 20),
                    //   child: Text(
                    //     'Ngày ' +
                    //         now.day.toString() +
                    //         " Tháng " +
                    //         now.month.toString() +
                    //         " Năm " +
                    //         now.year.toString(),
                    //     style: TextStyle(fontSize: 18),
                    //   ),
                    // ),
                    Container(
                      width: 350,
                      height: 300,
                      color: Colors.blue,
                      child: Image.network('${snapshot.data[widget.id].image}',
                          fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: AutoSizeText(
                        '${snapshot.data[widget.id].title}',
                        maxFontSize: 35,
                        minFontSize: 25,
                        // textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 255, 140),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: AutoSizeText(
                          maxLines: 100,
                          maxFontSize: 25,
                          minFontSize: 15,
                          '${snapshot.data[widget.id].decription}',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
          ),
        ));
  }
}
