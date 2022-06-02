import 'package:flutter/material.dart';
import 'package:the_tereliye_book_new/data/explore_data.dart';
import 'package:the_tereliye_book_new/model/item_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 243, 244),
        body: SafeArea(
          child: ListView.builder(
            itemExtent: 200,shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
            itemCount: exploreDataList.length,
            itemBuilder: ((context, index) {
              return ItemList(exploreData: exploreDataList[index]);
            }),
          ),
        ));
  }
}
