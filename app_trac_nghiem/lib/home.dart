import 'package:app_trac_nghiem/color.dart';
import 'package:app_trac_nghiem/detail_news.dart';
import 'package:app_trac_nghiem/type_questions.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text(
      'Hủy',
      style: TextStyle(color: Colors.red),
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      "Chơi",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => Page1()));
      Navigator.of(context, rootNavigator: true).pushNamed('/play');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    //backgroundColor: Colors.greenAccent,

    title: const Text(
      "Thông Báo",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
    content: const Text("Bạn có muốn vào trận đấu?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

//home
//friend
Card _friend = Card(
  color: const Color.fromARGB(255, 242, 255, 183),
  child: ListTile(
    leading: const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/images/yone_hoalinh.png')),
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
    trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
    isThreeLine: true,
  ),
);

//
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // home
    Container(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text('Công Nghệ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
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
    ),

    // friend
    Container(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.add_circle_outline_outlined, size: 40),
                  Text('Bạn Bè',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Icon(Icons.add_alert_outlined, size: 40),
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
    ),
    //

    const TypeQuestions(),
    //  rank
    Container(
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
                        onPressed: () {},
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
    ),
    // setting
    ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                        width: 420,
                        height: 453,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: Colors.black54,
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.person,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 50),
                                            child: Text(
                                              'Tài Khoản',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          const Icon(Icons
                                              .keyboard_arrow_right_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: Colors.black54,
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.history_outlined,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 40),
                                            child: Text(
                                              'Lịch Sử Đấu',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          const Icon(Icons
                                              .keyboard_arrow_right_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: Colors.black54,
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.lock_outline,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text(
                                              'Đổi Mật Khẩu',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          const Icon(Icons
                                              .keyboard_arrow_right_outlined)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: SizedBox(
                                width: 250,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Đăng Xuất',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 420,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'Cài Đặt',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    'assets/images/yone_hoalinh.png'),
                              ),
                            ),
                            const Text('Dương Nghĩa Hiệp',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white)),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('Tổng Điểm: 1000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.yellow)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    backgroundColor: Colors.amberAccent,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Xem Lịch Sử',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
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
        iconSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.black),
              label: 'Home',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined, color: Colors.black),
              label: 'Friend',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined, color: Colors.black),
              label: 'Play',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined, color: Colors.black),
              label: 'Rank',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, color: Colors.black),
              label: 'Setting',
              backgroundColor: Color(0xFF00FFD1)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
