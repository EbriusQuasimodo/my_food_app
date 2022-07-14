import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem( //категории
            title: "Говнядина",
            isActive: true,
            press: (){},
          ),
          CategoryItem(
            title: "Курятина",
            press: (){},
          ),
          CategoryItem(
            title: "Картошка",
            press: (){},
          ),
          CategoryItem(
            title: "Напитки",
            press: (){},
          ),
        ],
      ),
    );
  }
}
