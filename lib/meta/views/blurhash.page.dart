// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:blurhash/blurhash.dart' as hash;

class FlutterBlurhash extends StatelessWidget {
  const FlutterBlurhash({Key? key}) : super(key: key);

  generate() async {
    ByteData bytes = await rootBundle.load("image.jpg");
    Uint8List pixels = bytes.buffer.asUint8List();
    var blurHash = await hash.BlurHash.encode(pixels, 4, 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BlurHash")),
      body: SizedBox.expand(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              // width: 400,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300),
              child: const BlurHash(
                hash: "L9AunH=h0]0^V@WYkDof0cEd}c=~",
                imageFit: BoxFit.fitWidth,
                image:
                    "https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=579&q=80",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// BlurHash(hash: "L9AunH=h0]0^V@WYkDof0cEd}c=~")
// https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=579&q=80