import 'package:flutter/material.dart';

class Rank extends StatefulWidget {
  const Rank({super.key});

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
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
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                child: Text('Xếp Hạng',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Text('100',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent, shape: BoxShape.circle),
                      child: IconButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          shape: const CircleBorder(),
                        ),
                        icon: const Icon(Icons.history_outlined, size: 30),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pushNamed('/history');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/yone_hoalinh.png')),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Hạng 1',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(
                  //textAlign: TextAlign.center,
                  'Dương Nghĩa Hiệp',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 100,
                      child: Card(
                        color: const Color.fromARGB(255, 242, 255, 183),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/hinhgaidep.jpg')),
                                  Text('Dương Nghĩa Hiệp',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black)),
                                ],
                              ),
                              trailing: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "100 ",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.red)),
                                    WidgetSpan(
                                      child: Icon(Icons.star,
                                          size: 20, color: Colors.amberAccent),
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
                }),
          ),
        ],
      ),
    );
  } // Rank
}
