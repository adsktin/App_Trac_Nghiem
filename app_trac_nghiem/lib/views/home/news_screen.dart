import 'package:app_trac_nghiem/services/news_service.dart';
import 'package:app_trac_nghiem/views/home/detail_news.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:app_trac_nghiem/models/news_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsState();
}

class _NewsState extends State<NewsScreen> {
  Future<List<News>> _fecthNews() async {
    var data = NewsService.fetchNews();
    return data;
  }

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //       colors: [
      //         Color.fromARGB(255, 110, 255, 120),
      //         Color.fromARGB(255, 104, 235, 255),
      //       ],
      //       begin: FractionalOffset(0.0, 0.0),
      //       end: FractionalOffset(1.0, 0.0),
      //       stops: [0.0, 1.0],
      //       tileMode: TileMode.clamp),
      // ),
      child: ListView(children: <Widget>[
        Column(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AutoSizeText(
              'Tin Tức Mới',
              maxFontSize: 32,
              minFontSize: 25,
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
                    style: const TextStyle()),
              ],
            ),
          ),
        ]),
        SingleChildScrollView(
          child: Center(
              child: FutureBuilder<List<News>>(
                  future: _fecthNews(),
                  builder: ((context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => Detail(
                                          id: index,
                                        ));
                                  },
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 42),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        alignment: Alignment
                                            .center, // Center children in the Stack
                                        children: [
                                          Container(
                                            width: 350,
                                            height: 300,
                                            color: Colors.black,
                                            // decoration: const BoxDecoration(
                                            //   color: Colors.blue,
                                            //   borderRadius: BorderRadius.all(
                                            //     Radius.circular(10),
                                            //   ),
                                            // ),
                                            child: Image.network(
                                              '${snapshot.data[index].image}',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Positioned(
                                            top: 230,
                                            left: 0,
                                            right: 0,
                                            bottom: -20,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white24,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 20, 10, 10),
                                                child: AutoSizeText(
                                                  "${snapshot.data[index].title}",
                                                  maxLines: 1,
                                                  maxFontSize: 30,
                                                  minFontSize: 10,
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.inter(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
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
                          });
                    } else {
                      return const Padding(
                        padding: EdgeInsets.only(top: 250),
                        child: CircularProgressIndicator(),
                      );
                    }
                  }))),
        ),
      ]),
    );
  } // News
}
