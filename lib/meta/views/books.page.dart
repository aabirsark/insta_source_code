import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BooksLibrary extends StatelessWidget {
  const BooksLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/apps.svg",
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/search.svg",
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: FadeInUpBig(
        delay: const Duration(seconds: 1),
        duration: const Duration(milliseconds: 1000),
        child: const CustomBookBottomBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: BookHeader(),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: books.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: .75),
                itemBuilder: (context, index) {
                  var data = books.elementAt(index);
                  return ZoomIn(child: CustomGridTile(data: data));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomBookBottomBar extends StatelessWidget {
  const CustomBookBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/home.svg",
                color: Colors.yellow,
              ),
              SvgPicture.asset(
                "assets/bookmark.svg",
                color: Colors.white,
              ),
              SvgPicture.asset(
                "assets/bag.svg",
                color: Colors.white,
              ),
              SvgPicture.asset(
                "assets/user.svg",
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BookModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                height: constraints.maxHeight * 0.8,
                width: constraints.maxWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      data.author,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data.bookName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: constraints.maxHeight * 0.65,
                  width: constraints.maxWidth * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.network(
                    data.bookCoverUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class BookHeader extends StatelessWidget {
  const BookHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Library",
          style: TextStyle(fontSize: 28),
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/settings.svg",
            ))
      ],
    );
  }
}

class BookModel {
  final String bookName;
  final String author;
  final String bookCoverUrl;

  BookModel({
    required this.bookName,
    required this.author,
    required this.bookCoverUrl,
  });
}

List<BookModel> books = [
  BookModel(
      bookName: "Book Theif",
      author: "Markus Zusak",
      bookCoverUrl:
          "https://img.search.brave.com/xBrF7EwfAWziesdXo_z1qqefT3p4lq2nvxNWNfUzrKU/rs:fit:309:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5Q/SjhJZ2NtamRfY0E4/R0hTQnpQU1VnSGFM/WCZwaWQ9QXBp"),
  BookModel(
      bookName: "The Shinning",
      author: "Stephen King",
      bookCoverUrl:
          "https://img.search.brave.com/evEFsNTHYL5bEMRFeH0hRc36H2aDDdK7kaSeG1CH9aI/rs:fit:309:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5G/UGo2alFrMEdrU3Q0/blMxU2Ztd0FRSGFM/WCZwaWQ9QXBp"),
  BookModel(
      bookName: "The Alchemist",
      author: "Ponlo Coelho",
      bookCoverUrl:
          "https://img.search.brave.com/ePKxDD8iCWMV7tM-vOztu7HAgbff0HaCnSNFS-mzc-s/rs:fit:309:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5E/U2Y2WXdXM21OYzda/NkRXbXFzN09BSGFM/VyZwaWQ9QXBp"),
  BookModel(
      bookName: "The Godfather",
      author: "Mario Puzo",
      bookCoverUrl:
          "https://img.search.brave.com/38LRJolj-LuzVPwXGspRpFjTCKaE05O7iRPfSB1YvTA/rs:fit:317:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC53/bm9PT3FjRkZiUEwy/MjdmNEQ3TzVRSGFM/RSZwaWQ9QXBp"),
  BookModel(
      bookName: "Harry Potter",
      author: "J.K Rownling",
      bookCoverUrl:
          "https://img.search.brave.com/TPjWrPcRLM3i6QinRxW0vV9cd6eOO_c16H2KC6D8MBw/rs:fit:316:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5U/ZjNqNlVQR2NZZGpw/VmRkalRRdDBRSGFM/SCZwaWQ9QXBp"),
];
