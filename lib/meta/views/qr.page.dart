// ignore_for_file: avoid_print, unused_local_variable

import 'package:barcode_scan2/gen/protos/protos.pb.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key? key}) : super(key: key);

  scamBarcode() async {
    try {
      var result = await BarcodeScanner.scan();

      if (result.type == ResultType.Barcode) {
        var qrCodeData = result.rawContent;

        /// Navigate to next page
      } else {
        /// Retreat
      }
    } catch (e) {
      print(e);
    }
  }

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
