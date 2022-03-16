import 'package:flutter/material.dart';

class NeouMorphism extends StatelessWidget {
  const NeouMorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Neumorphism"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: Colors.grey[500]!),
                const BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: Colors.white),
              ]),
        ),
      ),
    );
  }
}
