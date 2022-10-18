import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

Padding _friendNotification = Padding(
    padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 164, 255, 199),
        border: Border.all(color: const Color.fromARGB(255, 13, 151, 66)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/yone_hoalinh.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                child: Column(
                  children: [
                    Text(
                      '10:00',
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Dương Nghĩa Hiệp',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 5, 238, 94),
                          border: Border.all(
                              color: const Color.fromARGB(255, 13, 151, 66)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.check)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 251, 255, 41),
                          border: Border.all(
                              color: const Color.fromARGB(255, 67, 71, 13)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    ));

// Challenge
Padding _challengeNotification = Padding(
    padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 164, 255, 199),
        border: Border.all(color: const Color.fromARGB(255, 13, 151, 66)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/yone_hoalinh.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                child: Column(
                  children: [
                    Text(
                      '10:00',
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Dương Nghĩa Hiệp',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 5, 238, 94),
                          border: Border.all(
                              color: const Color.fromARGB(255, 13, 151, 66)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/images/swords.png',
                            width: 40,
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 251, 255, 41),
                          border: Border.all(
                              color: const Color.fromARGB(255, 67, 71, 13)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    ));

class _NotificationScreenState extends State<NotificationScreen> {
  int index = 0;
  bool _txttitle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 110, 255, 120),
        title: Center(
          child: Text(
            _txttitle ? 'Lời Mời Kết bạn' : 'Lời Mời Thách Dấu',
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          index = 0;
                          _txttitle = true;
                        });
                      }),
                      child: const Icon(
                        Icons.people_alt_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          index = 1;
                          _txttitle = false;
                        });
                      }),
                      child: Image.asset(
                        'assets/images/swords.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  )
                ],
              ),
              IndexedStack(
                index: index,
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: _friendNotification,
                          );
                        }),
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
                            child: _challengeNotification,
                          );
                        }),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
