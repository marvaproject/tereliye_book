import 'package:flutter/material.dart';
import 'package:the_tereliye_book_new/data/book_data.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final BookData bookData;

 DetailScreen({required this.bookData});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.bookData.name,
                  style: const TextStyle(
                      fontFamily: "Lora",
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 37, 89, 101),
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.bookData.imageAsset,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    widget.bookData.description,
                    style: const TextStyle(
                      fontFamily: "Lora",
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    var url = widget.bookData.url;
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 38,
                    width: 210,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 37, 89, 101),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "Buy & Read",
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
