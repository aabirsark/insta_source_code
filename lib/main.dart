import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:insta_code/app/contants.dart';
import 'package:insta_code/meta/views/camera.page.dart';
import 'package:insta_code/meta/views/flag_demo.dart';
import 'package:insta_code/meta/widgets/state_scope.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(const InstaSourceCode());
}

class InstaSourceCode extends StatelessWidget {
  const InstaSourceCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Source Code",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CameraPage(),
    );
  }
}
