import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class HistoryChallenge extends StatefulWidget {
  const HistoryChallenge({super.key});

  @override
  State<HistoryChallenge> createState() => _HistoryChallengeState();
}

Padding _friend = Padding(
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
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage('assets/images/yone_hoalinh.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Column(
                    children: [
                      Text(
                        'Dương Nghĩa Hiệp',
                        style: GoogleFonts.inter(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Thua',
                        style: GoogleFonts.inter(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                children: [
                  Text(
                    '12:00',
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(child: Image.asset('assets/images/swords.png')),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage('assets/images/yone_hoalinh.png'),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Dương Nghĩa Hiệp',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Thắng',
                      style: GoogleFonts.inter(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ));

class _HistoryChallengeState extends State<HistoryChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'lịch sử thách đấu',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const []),
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
    );
  }
}
