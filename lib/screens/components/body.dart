import 'package:flutter/material.dart';


import '../../components/search_box.dart';
import '../../constants.dart';
import 'category_item.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {}, //поиск, файл search_box.dart
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}

