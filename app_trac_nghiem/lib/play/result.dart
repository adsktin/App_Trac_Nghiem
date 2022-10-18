import 'package:app_trac_nghiem/color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// <-- Import statement

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Scaffold(
        //backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Lottie.asset('assets/images/winner.json', height: 400),
              ),
              Column(
                children: [
                  const Text(
                    'Chúc mừng bạn!',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Tổng điểm: ',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: textfield,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed('/home');
                            },
                            icon: const Icon(
                              Icons.home,
                              size: 80,
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: textfield,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed('/type_question');
                            },
                            icon: const Icon(
                              Icons.play_arrow_outlined,
                              size: 80,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
