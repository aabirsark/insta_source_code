import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class StateScope extends InheritedWidget {
  const StateScope({Key? key, required Widget child, required this.cameras})
      : super(key: key, child: child);

  final List<CameraDescription> cameras;

  static List<CameraDescription> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StateScope>()!.cameras;
  }

  @override
  bool updateShouldNotify(StateScope oldWidget) {
    return true;
  }
}
