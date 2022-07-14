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
            ImagePng: "assets/images/burger_beer.png",
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
            ImagePng: "assets/images/burger_beer.png",
            press: (){},
          ),
          ItemCard(
            title: "Гамбургер",
            shopName: "МегаБургер",
            ImagePng: "assets/images/burger_beer.png",
            press: (){},
          ),
          ItemCard(
            title: "Биг Рус",
            shopName: "МегаБургер",
            ImagePng: "assets/images/burger2.png",
            press: (){},
          ),

        ],
      ),
    );
  }
}
