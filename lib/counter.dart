import 'package:flutter/material.dart';

class TasbeehCounter extends StatefulWidget {
  const TasbeehCounter({super.key});

  @override
  State<TasbeehCounter> createState() {
    return _TasbeehCounterState();
  }
}

class _TasbeehCounterState extends State<TasbeehCounter> {
  var start = 0;
  void adder() {
    setState(() {
      start = start + 1;
      if (start >= 100) {
        start = 100;
      }
    });
  }

  void reset() {
    setState(() {
      start = 0;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 100,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Text(
            'Tasbeeh',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/nums/$start.png',
          width: 150,
          height: 180,
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/images/green.png'),
                iconSize: 230,
                onPressed: adder,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
              ),
              IconButton(
                icon: Image.asset('assets/images/red.png'),
                iconSize: 120,
                onPressed: reset,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                padding: const EdgeInsets.only(right: 230),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
