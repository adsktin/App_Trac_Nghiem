import 'package:app_trac_nghiem/views/color.dart';
import 'package:flutter/material.dart';

class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    Card friend = Card(
      color: const Color.fromARGB(255, 242, 255, 183),
      child: ListTile(
        leading: const CircleAvatar(
            radius: 45,
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text('Thắng 10')
            ],
          ),
        ),
        trailing: Container(
          color: textfield,
          child: IconButton(
            icon: Image.asset(
              'assets/images/swords.png',
              width: 40,
              height: 40,
            ),
            onPressed: () {
              showchellangeDialog(context);
            },
          ),
        ),
      ),
    );
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
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed('/search_friend');
                    },
                    icon:
                        const Icon(Icons.add_circle_outline_outlined, size: 40),
                  ),
                  const Text('Bạn Bè',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed('/notification');
                    },
                    icon: const Icon(Icons.add_alert_outlined, size: 40),
                  ),
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
                    child: friend,
                  );
                }),
          ),
        ],
      ),
    );
  } // Friend
}

showchellangeDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text(
      'Hủy Bỏ',
      style: TextStyle(color: Colors.red),
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );
  Widget acceptButton = TextButton(
    child: const Text(
      "Xác Nhận",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => Page1()));
      Navigator.of(context, rootNavigator: true).pushNamed('/type_question');
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
    content: const Text(
      "Gửi lời mời thách đấu?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    ),
    actions: [
      cancelButton,
      acceptButton,
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
