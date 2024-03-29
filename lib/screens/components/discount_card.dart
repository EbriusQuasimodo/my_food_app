import 'package:flutter/material.dart';

import '../../constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Лучшие предложения",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/images/beyond-meat-mcdonalds.png"
                ),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  Color(0xFFFF961F).withOpacity(0.7),
                  kPrimaryColor.withOpacity(0.7),
                ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'assets/images/macdonalds.png',
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Получите скидку \n",
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          TextSpan(
                            text: "30% \n",
                            style: TextStyle(
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "на первый заказ Рус Бургера",
                            style: TextStyle(
                                fontSize: 10
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ),


        ],
      ),
    );
  }
}


