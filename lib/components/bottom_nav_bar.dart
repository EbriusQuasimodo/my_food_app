import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.home_filled,
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite,
              color: Colors.grey[300],
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[300],
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.person,
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}
