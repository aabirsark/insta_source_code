import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPage extends StatelessWidget {
  const SvgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Svg Picture"),
        centerTitle: true,
      ),
      body: Center(
          child: SvgPicture.network(
              "https://www.gstatic.com/devrel-devsite/prod/icon.svg")),
    );
  }
}
