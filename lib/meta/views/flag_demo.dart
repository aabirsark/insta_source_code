import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

class FlagPage extends StatelessWidget {
  const FlagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flag App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Flag.fromCode(
            FlagsCode.US,
          ),
        ),
      ),
    );
  }
}
