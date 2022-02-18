import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:insta_code/app/contants.dart';
import 'package:insta_code/meta/widgets/state_scope.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {



  late CameraController controller;

  @override
  void initState() {
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
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
      appBar: AppBar(
        title: const Text("Camera"),
        centerTitle: true,
      ),
      body: controller.value.isInitialized
          ? Center(child: CameraPreview(controller))
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  
}
