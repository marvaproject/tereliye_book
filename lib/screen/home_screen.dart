import 'package:flutter/material.dart';
import 'package:the_tereliye_book_new/data/book_data.dart';
import 'package:the_tereliye_book_new/model/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 243, 244),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            mainAxisExtent: 215,
            crossAxisSpacing: 20,
          ),
          itemCount: bookDataList.length,
          itemBuilder: (context, index) {
            return ItemCard(bookData: bookDataList[index]);
          },
        ),
      ),
    );
  }
}
