import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 10),
            child: CircleAvatar(radius: 30, child: Text('10s')),
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                color: Color.fromARGB(255, 0, 48, 87),
                child: Center(
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
                top: -20,
                left: 170,
                right: 170,
                bottom: 270,
                child: Container(
                  width: 10,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 80, 177),
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.yellow,
                          backgroundColor: Color(0xFF1A2849),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          )),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'A:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Gà có trước',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)))),
                        ],
                      ),
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
                  decoration: BoxDecoration(
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
                  decoration: BoxDecoration(
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
                  decoration: BoxDecoration(
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
