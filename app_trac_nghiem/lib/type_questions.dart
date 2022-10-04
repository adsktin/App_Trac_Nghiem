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
        title: const Center(
          child: Text('Thể Loại',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.play_arrow_outlined),
        //     tooltip: 'Tìm kiếm',
        //     color: Colors.black,
        //     iconSize: 40,
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Center(
        child: ListView(
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                        child: SizedBox(
                          width: 200,
                          height: 100,
                          child: Card(
                            color: Color.fromARGB(255, 102, 235, 195),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        'assets/images/hinhgaidep.jpg')),
                                title: Text(
                                  'Thể Thao',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
