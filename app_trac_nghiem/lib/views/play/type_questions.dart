import 'package:app_trac_nghiem/controller/game_controller.dart';
import 'package:app_trac_nghiem/controller/questions_controller.dart';
import 'package:app_trac_nghiem/controller/types_controller.dart';
import 'package:app_trac_nghiem/views/play/play.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeQuestions extends StatefulWidget {
  const TypeQuestions({super.key});

  @override
  State<TypeQuestions> createState() => _TypeQuestionsState();
}

class _TypeQuestionsState extends State<TypeQuestions> {
  @override
  void initState() {
    super.initState();
    TypesController.fetchDataTypes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 255, 240),
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
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
            SingleChildScrollView(child: Obx((() {
              if (TypesController.isLoading.value) {
                return ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: TypesController.listtp.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        showAlertDialog(context);
                        GameController.idtype =
                            TypesController.listtp[index].id;
                      },
                      child: Padding(
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
                                  backgroundImage: NetworkImage(
                                    '${TypesController.listtp[index].image}',
                                  ),
                                ),
                                title: Text(
                                  '${TypesController.listtp[index].type}',
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
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            }))),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text(
      'Hủy',
      style: TextStyle(color: Colors.red),
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      "Chơi",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      QuestionsController.fetchDataQuestions();
      Get.to(() => const Play());
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
    content: const Text("Bạn có muốn vào trận đấu?"),
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
