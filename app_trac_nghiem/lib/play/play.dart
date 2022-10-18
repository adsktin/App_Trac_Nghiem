import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  static int _count = 10;
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_count > 0) {
        setState(() {
          _count--;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            onPressed: () {
              showAlertDialog(context);
            },
            color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 35, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 40,
                    child: Text(
                      _count.toString(),
                      style: const TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                color: const Color.fromARGB(255, 0, 48, 87),
                child: const Center(
                  child: Text(
                    'Gà có trước hay trứng có trước?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -30,
                left: 100,
                right: 100,
                bottom: 260,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 90, 80, 177),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(0),
                    child: Center(
                      child: Text(
                        "1/10",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF6FF92),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //                 foregroundColor: Colors.yellow,
          //                 backgroundColor: const Color(0xFF1A2849),
          //                 shape: const RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.all(
          //                     Radius.circular(25),
          //                   ),
          //                 )),
          //             onPressed: () {},
          //             child: Row(
          //               children: [
          //                 const Text(
          //                   'A:',
          //                   style: TextStyle(
          //                       fontSize: 20, fontWeight: FontWeight.bold),
          //                 ),
          //                 Padding(
          //                     padding: const EdgeInsets.only(left: 20),
          //                     child: Text('Gà có trước',
          //                         style: GoogleFonts.poppins(
          //                             textStyle: const TextStyle(
          //                                 color: Colors.white,
          //                                 fontSize: 20,
          //                                 fontWeight: FontWeight.bold)))),
          //               ],
          //             ),
          //           ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ChoiceChip(
                      selectedColor: Color.fromARGB(255, 123, 213, 255),
                      label: Text('A: Gà có trước'),
                      selected: isSelected,
                      onSelected: (newState) {
                        setState(() {
                          isSelected = newState;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle),
                  child: IconButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: const CircleBorder(),
                    ),
                    icon: Image.asset('assets/images/50.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle),
                  child: IconButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: const CircleBorder(),
                    ),
                    icon: Image.asset('assets/images/light_on.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle),
                  child: IconButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: const CircleBorder(),
                    ),
                    icon: Image.asset('assets/images/refresh.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text(
      'Thoát Ra',
      style: TextStyle(color: Colors.red),
    ),
    onPressed: () {
      // Navigator.of(context, rootNavigator: true).pop();
      Navigator.of(context, rootNavigator: true).pushNamed('/home');
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      "Chơi Tiếp",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => Page1()));
      Navigator.of(context, rootNavigator: true).pop();
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
    content: const Text("Bạn muốn thoát thử thách?"),
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
