import 'package:flutter/material.dart';
import 'package:food_application/screens/details/components/title_price_rating.dart';

import '../../../constants.dart';
import 'item_image.dart';
import 'order_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          favorite(),
          TitlePriceRating(
            name: "Биг Мак",
            numOfReviews: 28,
            rating: 3.5,
            price: 25,
            onRatingChanged: (value){},
          ),
          Text("Большой сандвич с двумя рублеными бифштексами из натуральной говядины на специальной булочке «Биг Мак», лук, два кусочка маринованных огурчиков, свежий салат и, конечно, «специальный соус, сыр - Чеддер». Именно так делают легендарный Биг Мак! Хочется добавить - «Вот что я люблю».",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1,),
          OrderButton(
            size: size,
            press: (){},

          ),

        ],
      ),
    );
  }

  Row favorite() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.favorite,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

