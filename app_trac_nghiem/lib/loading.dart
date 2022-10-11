import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
 // <-- Import statement

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  // void initState() {
  //   super.initState();
  //   delayTimer();
  // }

  // delayTimer() async {
  //   var duration = const Duration(seconds: 10);
  //   return Timer(duration, firstscreen);
  // }

  // firstscreen() {
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => const Firstscreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 110, 255, 120),
              Color.fromARGB(255, 104, 235, 255),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Lottie.asset('assets/images/monkey_load.json'),
              ),
              const Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
