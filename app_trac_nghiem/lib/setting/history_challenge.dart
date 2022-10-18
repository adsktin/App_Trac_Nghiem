import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryChallenge extends StatefulWidget {
  const HistoryChallenge({super.key});

  @override
  State<HistoryChallenge> createState() => _HistoryChallengeState();
}

Padding _challenge = Padding(
    padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 164, 255, 199),
        border: Border.all(color: const Color.fromARGB(255, 13, 151, 66)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/yone_hoalinh.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
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
                            color: const Color.fromARGB(255, 255, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Text(
                    '12:00',
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset('assets/images/swords.png'),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 40,
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
                          color: const Color.fromARGB(255, 255, 0, 0),
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
        leading: const BackButton(color: Colors.black),
        title: const Center(
          child: Text(
            'Lịch sử thách đấu',
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
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const []),
          SingleChildScrollView(
            child: ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: _challenge,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
