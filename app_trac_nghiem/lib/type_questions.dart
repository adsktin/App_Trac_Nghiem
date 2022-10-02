import 'package:flutter/material.dart';

class TypeQuestions extends StatefulWidget {
  const TypeQuestions({super.key});

  @override
  State<TypeQuestions> createState() => _TypeQuestionsState();
}

class _TypeQuestionsState extends State<TypeQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 255, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 188, 255, 240),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Tìm kiếm',
            color: Colors.black,
            iconSize: 40,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Thể loại',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                        child: SizedBox(
                          width: 200,
                          height: 100,
                          child: Card(
                            color: const Color.fromARGB(255, 102, 235, 195),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                ListTile(
                                  leading: CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage(
                                          'assets/images/hinhgaidep.jpg')),
                                  title: Text(
                                    'thể thao',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
