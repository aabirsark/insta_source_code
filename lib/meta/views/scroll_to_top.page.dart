import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// TODO : make insta post regarding it
class ScrollToTop extends StatefulWidget {
  const ScrollToTop({Key? key}) : super(key: key);

  @override
  State<ScrollToTop> createState() => _ScrollToTopState();
}

class _ScrollToTopState extends State<ScrollToTop> {
  final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  scrollToTop() {
    controller.animateTo(0,
        duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll To Top"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: scrollToTop, child: const Icon(Iconsax.arrow_up)),
      body: ListView.builder(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListTile(
          leading: Text(index.toString()),
          title: const Text("Some content"),
        ),
      ),
    );
  }
}
