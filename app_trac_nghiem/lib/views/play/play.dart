import 'package:app_trac_nghiem/controller/game_controller.dart';
import 'package:app_trac_nghiem/controller/questions_controller.dart';
import 'package:app_trac_nghiem/views/play/result.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  //
  final int _duration = 10;
  final CountDownController _controller = CountDownController();
  var start = true;
  var checkSelect = false;
  var selectAnswer = 4;

  //

  //static int _count = 10;
  // int _selectedIndex = 1;
  // bool isSelected = false;

  // final List<String> _options = [
  //   QuestionsController.listtp[0].answer[1].answercontent,
  //   QuestionsController.listtp[0].answer[1].answercontent,
  //   QuestionsController.listtp[0].answer[2].answercontent,
  //   QuestionsController.listtp[0].answer[3].answercontent
  // ];

  // Widget _buildChips() {
  //   List<Widget> chips = [];

  //   for (int i = 0; i < _options.length; i++) {
  //     ChoiceChip choiceChip = ChoiceChip(
  //       selected: _selectedIndex == i,
  //       label: SizedBox(
  //         width: 300,
  //         height: 30,
  //         child: Row(
  //           children: [
  //             AutoSizeText(_options[i],
  //                 maxFontSize: 20,
  //                 minFontSize: 10,
  //                 // textAlign: TextAlign.left,
  //                 style: const TextStyle(
  //                   color: Colors.white,
  //                 )),
  //           ],
  //         ),
  //       ),
  //       //avatar: const FlutterLogo(),
  //       elevation: 10,
  //       pressElevation: 5,
  //       shadowColor: Colors.teal,
  //       padding: const EdgeInsets.all(10),
  //       backgroundColor: const Color.fromARGB(255, 0, 48, 87),
  //       selectedColor: const Color.fromARGB(255, 129, 230, 255),
  //       onSelected: (bool selected) {
  //         setState(() {
  //           if (selected) {
  //             _selectedIndex = i;
  //           }
  //         });
  //       },
  //     );

  //     chips.add(Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 5), child: choiceChip));
  //   }

  //   return ListView(
  //     // This next line does the trick.
  //     scrollDirection: Axis.vertical,
  //     children: chips,
  //   );
  // }
  @override
  void initState() {
    setState(() {
      QuestionsController.fetchDataQuestions();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   leading: BackButton(
        //       onPressed: () {
        //         showAlertDialog(context);
        //       },
        //       color: Colors.black),
        //   backgroundColor: Colors.white,
        // ),
        body: Obx((() {
      if (QuestionsController.isLoading.value) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      color: Colors.black),
                  CircularCountDownTimer(
                    duration: QuestionsController.timeAnswer,
                    // Countdown initial elapsed Duration in Seconds.
                    initialDuration: 0,
                    // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
                    controller: _controller,
                    // Width of the Countdown Widget.
                    width: 50,
                    // Height of the Countdown Widget.
                    height: 50,
                    // Ring Color for Countdown Widget.
                    ringColor: Colors.grey[300]!,
                    // Ring Gradient for Countdown Widget.
                    ringGradient: null,
                    // Filling Color for Countdown Widget.
                    fillColor: Colors.purpleAccent[100]!,
                    // Filling Gradient for Countdown Widget.
                    fillGradient: null,
                    // Background Color for Countdown Widget.
                    backgroundColor: Colors.purple[500],
                    // Background Gradient for Countdown Widget.
                    backgroundGradient: null,
                    // Border Thickness of the Countdown Ring.
                    strokeWidth: 5.0,
                    // Begin and end contours with a flat edge and no extension.
                    strokeCap: StrokeCap.round,
                    // Text Style for Countdown Text.
                    textStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
                    isReverse: true,
                    // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
                    isReverseAnimation: true,
                    // Handles visibility of the Countdown Text.
                    isTimerTextShown: true,
                    // Handles the timer start.
                    autoStart: true,
                    onStart: () {
                      setState(() {
                        if (!checkSelect) {
                          if (start) {
                            QuestionsController.item = 0;
                            start = false;
                          } else {
                            if (QuestionsController.item <
                                QuestionsController.amountQuestion - 1) {
                              QuestionsController.item =
                                  QuestionsController.item + 1;
                              checkSelect = false;
                            } else {
                              Get.to(() => Result());
                            }
                          }
                        }
                      });
                    },
                    // This Callback will execute when the Countdown Ends.
                    onComplete: () {
                      setState(() {
                        if (QuestionsController.item <
                            QuestionsController.amountQuestion) {
                          _controller.restart();
                        } else {
                          Get.to(() => Result());
                        }
                        checkSelect = false;
                      });
                    },

                    // This Callback will execute when the Countdown Changes.
                    onChange: (String timeStamp) {
                      // Here, do whatever you want
                      //debugPrint('Countdown Changed $timeStamp');
                    },
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 220,
                  color: const Color.fromARGB(255, 0, 48, 87),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: AutoSizeText(
                        '${QuestionsController.listtp[QuestionsController.item].questcontent}',
                        maxFontSize: 30,
                        minFontSize: 20,
                        textAlign: TextAlign.justify,
                        maxLines: 4,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 100,
                  right: 100,
                  bottom: 180,
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 90, 80, 177),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          "${QuestionsController.item + 1}/5",
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
                Positioned(
                  top: -10,
                  left: 0,
                  right: 300,
                  bottom: 180,
                  child: Container(
                    width: 50,
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Center(
                        child: Text(
                          "Điểm: ${QuestionsController.score}",
                          style: TextStyle(
                            fontSize: 15,
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

            // SizedBox(
            //           width: 350,
            //           height: 50,
            //           child: ChoiceChip(
            //             selectedColor: Color.fromARGB(255, 123, 213, 255),
            //             label: Text('A: Gà có trước'),
            //             selected: isSelected,
            //             onSelected: (newState) {
            //               setState(() {
            //                 isSelected = newState;
            //               });
            //             },
            //           ),
            //         ),

            Expanded(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(8),
                  itemCount: QuestionsController.listtp[0].answers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          QuestionsController.answerQuestion(QuestionsController
                              .listtp[QuestionsController.item]
                              .answers[index]
                              .answerbool);

                          setState(() {
                            selectAnswer = index;
                            if (QuestionsController.item <
                                QuestionsController.amountQuestion - 1) {
                              QuestionsController.nextQUestion();
                              checkSelect = true;
                              if (QuestionsController.item ==
                                  QuestionsController.amountQuestion) {
                                _controller.pause();
                              } else {
                                checkSelect = true;
                                _controller.restart();
                              }
                            } else {
                              _controller.pause();
                              setState(() {
                                if (QuestionsController.item <
                                    QuestionsController.amountQuestion - 1) {
                                  QuestionsController.nextQUestion();

                                  checkSelect = true;
                                  if (QuestionsController.item ==
                                      QuestionsController.amountQuestion) {
                                    _controller.pause();
                                  } else {
                                    checkSelect = true;
                                    _controller.restart();
                                  }
                                } else {
                                  _controller.pause();
                                  Get.to(() => Result());
                                }
                              });
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: 
                                 Color.fromRGBO(123, 120, 237, 1),
                          ),
                          child: SizedBox(
                            height: 70,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 25, 10, 0),
                                child: AutoSizeText(
                                    "${index + 1} - ${QuestionsController.listtp[QuestionsController.item].answers[index].answercontent}",
                                    maxLines: 2,
                                    maxFontSize: 14,
                                    minFontSize: 12,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.inter(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent, shape: BoxShape.circle),
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
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent, shape: BoxShape.circle),
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
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent, shape: BoxShape.circle),
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
        );
      } else {
        return CircularProgressIndicator();
      }
    })));
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
