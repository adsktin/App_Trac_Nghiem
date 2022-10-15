import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class AddFriends extends StatefulWidget {
  const AddFriends({super.key});

  @override
  State<AddFriends> createState() => _AddFriendsState();
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

class _AddFriendsState extends State<AddFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lời mời kết bạn',
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
