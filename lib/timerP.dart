import 'dart:async';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int seconds = 0;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds == 0) {
        seconds++;
        setState(() {});
      }
      setState(() {});
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 93, 229),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 85, 133, 227),
                borderRadius: BorderRadius.circular(300),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 45, 215, 253),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0)),
                ]),
            child: const Text(
              "0",
              style: TextStyle(fontSize: 40),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 40, 106, 186),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(225, 45, 251, 253),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 0))
                    ]),
                width: 90,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    startTimer();
                  },
                  child: (const Text(
                    "Start",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 17, 58, 164),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(225, 45, 251, 253),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 0),
                      )
                    ]),
                height: 50,
                width: 90,
                child: ElevatedButton(
                  onPressed: stopTimer,
                  child: (const Text(
                    "Stop",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
