import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//home
//friend
Card _friend = Card(
  color: const Color.fromARGB(255, 252, 235, 174),
  child: ListTile(
    leading: const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/images/hinhgaidep.jpg')),
    title: const Text('Top 1',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.redAccent)),
    subtitle: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Dương Nghĩa Hiệp',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text('Thắng 10')
        ],
      ),
    ),
    trailing: IconButton(
        onPressed: () {}, icon: const Icon(Icons.screen_share_outlined)),
    isThreeLine: true,
  ),
);

//
class _HomeState extends State<Home> {
  int _selectedIndex = 3;
  static final List<Widget> _widgetOptions = <Widget>[
    // home
    ListView(children: <Widget>[
      Column(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Tin Tức Mới',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text('Công Nghệ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: const [
              Text('Ngày 2 tháng 10 năm 2022', style: TextStyle()),
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment:
                              Alignment.center, // Center children in the Stack
                          children: [
                            Container(
                              width: 350,
                              height: 300,
                              color: Colors.blue,
                              child: Image.asset('assets/images/hinhgaidep.jpg',
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
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
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
                  ],
                );
              }),
        ),
      ),
    ]),

    // friend
    ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.add_circle_outline_outlined),
                Text('Bạn Bè',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                Icon(Icons.add_alert_outlined),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 5, 0),
          child: Text('Cùng thách đấu để nâng cao kiến thức'),
        ),
        SingleChildScrollView(
          child: ListView.builder(
              physics: const ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: _friend,
                );
              }),
        ),
      ],
    ),
    //

    const Text(
      'Index 3: play',
    ),
    //  rank
    ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Xếp Hạng',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const CircleBorder(),
              ),
              child: const Icon(
                Icons.history_outlined,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/hinhgaidep.jpg')),
        ]),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 5, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(80, 0, 40, 0),
                child: Text(
                  'Hạng 1',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text('100',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
              Icon(Icons.star, color: Colors.yellow[800]),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(70, 0, 40, 0),
          child: Text(
            textAlign: TextAlign.center,
            'Dương Nghĩa Hiệp',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
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
                            leading: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: const Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/hinhgaidep.jpg')),
                                const Text('Dương Nghĩa Hiệp',
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
    //
    const Text(
      'Index 5: Settings',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.black),
              label: 'Home',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart_outlined, color: Colors.black),
              label: 'Friend',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined, color: Colors.black),
              label: 'Play',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined, color: Colors.black),
              label: 'Rank',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              label: 'Setting',
              backgroundColor: Colors.greenAccent),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
