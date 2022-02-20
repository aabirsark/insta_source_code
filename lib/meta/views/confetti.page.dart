import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class ConfettiPage extends StatefulWidget {
  const ConfettiPage({Key? key}) : super(key: key);

  @override
  State<ConfettiPage> createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {



  late ConfettiController controller;

  @override
  void initState() {
    controller = ConfettiController(duration: const Duration(seconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  controller.play();
                },
                child: const Text("Show Confetti")),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: CustomConfetti(controller: controller)),
          Align(
              alignment: Alignment.bottomRight,
              child: CustomConfetti(controller: controller)),
          Align(
              alignment: Alignment.topLeft,
              child: CustomConfetti(controller: controller)),
          Align(
              alignment: Alignment.topRight,
              child: CustomConfetti(controller: controller)),
        ],
      ),
    );
  }



  
}

class CustomConfetti extends StatelessWidget {
  const CustomConfetti({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConfettiController controller;

  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
      confettiController: controller,
      blastDirection: pi * 3.5,
      maxBlastForce: 100,
      gravity: 0.2,
      numberOfParticles: 60,
      blastDirectionality: BlastDirectionality.explosive,
    );
  }
}
