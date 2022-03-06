import 'dart:ui';

import 'package:flutter/material.dart';

class GlassPage extends StatelessWidget {
  const GlassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/bg.jpg",
          fit: BoxFit.cover,
        ),
        Align(
            alignment: Alignment.center,
            child: 
            
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
            )
            
            
            )
      ],
    ));
  }
}
