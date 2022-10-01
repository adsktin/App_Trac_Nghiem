import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// news cua home
Stack _news = Stack(
  children: [
    Expanded(
      flex: 0,
      child: Container(
        width: 340,
        height: 300,
        margin: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(40),
        child: const FlutterLogo(
          size: 50,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(55, 300, 0, 0),
      child: Container(
        width: 300,
        height: 100,
        margin: const EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(25),
        child: const Text(
          'Android will ave native suport to statelote connection...........',
          style: TextStyle(fontSize: 18),
        ),
      ),
    ),
  ],
);
//
// friend
ListView _friend = ListView.builder(
    scrollDirection: Axis.vertical,
    padding: const EdgeInsets.all(10),
    itemCount: 20,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        color: Color.fromARGB(255, 255, 230, 141),
        child: ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/hinhgaidep.jpg')),
          title: Text('Top 1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.redAccent)),
          subtitle: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dương Nghĩa Hiệp',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text('Thắng 10')
              ],
            ),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: Icon(Icons.screen_share_outlined)),
          isThreeLine: true,
        ),
      );
    });

//
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // home
    Column(children: [
      Expanded(
          flex: 0,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  'Tin tức mới',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: Text('Công Nghệ',
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 150, 5),
                child: Text(
                  'Ngày 20 tháng 9 năm 2022',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          )),
      SizedBox(
        height: 500,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [_news],
              );
            }),
      ),
    ]),
    // friend
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.add_circle_outline_outlined),
                Text('Bạn Bè'),
                Icon(Icons.add_alert_outlined),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Cùng thách đấu để nâng cao kiến thức'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(height: 555, child: _friend),
        ),
      ],
    ),
    //

    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: School',
    ),
    const Text(
      'Index 3: Settings',
    ),
    const Text(
      'Index 3: Settings',
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
