import 'package:flutter/material.dart';
import 'package:insta_code/meta/views/flag_demo.dart';

void main() => runApp(const InstaSourceCode());

class InstaSourceCode extends StatelessWidget {
  const InstaSourceCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Insta Source Code",
      debugShowCheckedModeBanner: false,
      home: FlagPage(),
    );
  }
}
