import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qr Code"),
      ),
      body: Center(
        child: QrImage(
          data: "Follow @me__aabir_k for tips and tricks",
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
