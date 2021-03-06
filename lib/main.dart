import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:insta_code/app/contants.dart';
import 'package:insta_code/meta/views/blurhash.page.dart';
import 'package:insta_code/meta/views/books.page.dart';
import 'package:insta_code/meta/views/camera.page.dart';
import 'package:insta_code/meta/views/confetti.page.dart';
import 'package:insta_code/meta/views/flag_demo.dart';
import 'package:insta_code/meta/views/glass.page.dart';
import 'package:insta_code/meta/views/neuo.page.dart';
import 'package:insta_code/meta/views/qr.page.dart';
import 'package:insta_code/meta/views/scroll_to_top.page.dart';
import 'package:insta_code/meta/views/svg.page.dart';
import 'package:insta_code/meta/views/web.page.dart';
import 'package:insta_code/meta/widgets/state_scope.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // cameras = await availableCameras();

  runApp(const InstaSourceCode());
}

class InstaSourceCode extends StatelessWidget {
  const InstaSourceCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Source Code",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              // titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
              centerTitle: true,
              elevation: 0.0,
              color: Colors.black)),
      home: const MobileScanner(),
    );
  }
}
