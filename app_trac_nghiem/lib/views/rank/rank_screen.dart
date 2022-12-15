import 'package:app_trac_nghiem/controller/auth_controller.dart';
import 'package:app_trac_nghiem/models/rank_model.dart';
import 'package:app_trac_nghiem/models/user_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
import 'package:app_trac_nghiem/services/rank_service.dart';
import 'package:app_trac_nghiem/views/setting/history.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  Future<List<Ranks>> _fetchRanks() async {
    var data = RankService.fetchRanks();
    return data;
  }

  Future<User> getInfoUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    dynamic user = await AuthController.getDataUser(token.toString());
    //print(user);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getInfoUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: Text('Xếp Hạng',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('${snapshot.data.totalscore}',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 30,
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.amberAccent,
                                shape: BoxShape.circle),
                            child: IconButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.amberAccent,
                                shape: const CircleBorder(),
                              ),
                              icon:
                                  const Icon(Icons.history_outlined, size: 30),
                              onPressed: () {
                                // Navigator.of(context, rootNavigator: true)
                                // .pushNamed('/history');
                                Get.to(() => const History());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          '${AppUrl.urlimg}/storage/accounts/${snapshot.data.id}/avatar/${snapshot.data.avatar}'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'Hạng ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: AutoSizeText(
                        //textAlign: TextAlign.center,
                        '${snapshot.data.name}',
                        maxFontSize: 25,
                        minFontSize: 15,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    child: FutureBuilder<List<Ranks>>(
                  future: _fetchRanks(),
                  builder: ((context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                height: 100,
                                child: Card(
                                  color:
                                      const Color.fromARGB(255, 242, 255, 183),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ListTile(
                                        leading: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            '${snapshot.data[index].densRank}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundImage: NetworkImage(
                                                '${snapshot.data[index].avatar}',
                                              ),
                                            ),
                                            AutoSizeText(
                                              "${snapshot.data[index].name}",
                                              maxLines: 2,
                                              maxFontSize: 20,
                                              minFontSize: 8,
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        trailing: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "${snapshot.data[index].totalscore}",
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.red)),
                                              const WidgetSpan(
                                                child: Icon(Icons.star,
                                                    size: 20,
                                                    color: Colors.amberAccent),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    } else {
                      return const Padding(
                        padding: EdgeInsets.only(top: 150),
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
                )),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
