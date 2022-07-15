import 'package:flutter/material.dart';
import 'package:food_application/screens/details/details_screen.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Биг Мак",
            shopName: "МегаБургер",
            SvgSrc: "assets/icons/burger_beer.svg",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen();
                },
              ),
              );
            },
          ),
          ItemCard(
            title: "Чизбургер",
            shopName: "МегаБургер",
            SvgSrc: "assets/icons/chinese_noodles.svg",
            press: (){},
          ),
          ItemCard(
            title: "Гамбургер",
            shopName: "МегаБургер",
            SvgSrc: "assets/icons/burger_beer.svg",
            press: (){},
          ),
          ItemCard(
            title: "Биг Рус",
            shopName: "МегаБургер",
            SvgSrc: "assets/icons/burger_beer.svg",
            press: (){},
          ),

        ],
      ),
    );
  }
}
