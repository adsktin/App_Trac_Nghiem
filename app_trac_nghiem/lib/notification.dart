import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

Padding _friendNotification = Padding(
    padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Padding(
      padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 164, 255, 199),
          border: Border.all(color: Color.fromARGB(255, 13, 151, 66)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/yone_hoalinh.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 5),
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
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 238, 94),
                            border: Border.all(
                                color: Color.fromARGB(255, 13, 151, 66)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.check)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 251, 255, 41),
                            border: Border.all(
                                color: Color.fromARGB(255, 67, 71, 13)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.close)),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    ));

// Challenge
Padding _challengeNotification = Padding(
    padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Padding(
      padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 164, 255, 199),
          border: Border.all(color: Color.fromARGB(255, 13, 151, 66)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/yone_hoalinh.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 5),
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
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 238, 94),
                            border: Border.all(
                                color: Color.fromARGB(255, 13, 151, 66)),
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
                        SizedBox(width: 10),
                        Container(
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 251, 255, 41),
                            border: Border.all(
                                color: Color.fromARGB(255, 67, 71, 13)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.close)),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    ));

class _NotificationScreenState extends State<NotificationScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Icon(
                        Icons.people_alt_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                      onPressed: (() {
                        setState(() {
                          index = 0;
                        });
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      child: Image.asset(
                        'assets/images/swords.png',
                        width: 40,
                        height: 40,
                      ),
                      onPressed: (() {
                        setState(() {
                          index = 1;
                        });
                      }),
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
