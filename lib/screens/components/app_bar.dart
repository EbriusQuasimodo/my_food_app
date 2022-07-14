import 'package:flutter/material.dart';
import '../../constants.dart';
//файл с настройками homeAppBar
AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0, //подъем

    leading: IconButton( //почитать про leading
      onPressed: (){},
      icon: Icon(Icons.menu, color: Colors.grey[300]),
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context) //почитать про то, что это такое
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Вкус",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Столовки",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),

    centerTitle: true, //текст по центру

    actions: <Widget>[
      //почитать про actions и чем отличается от leading,
      // если они вообще связаны как-то
      IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.notification_important, //это иконка уведомлений
          color: Colors.grey[300],
        ),
      ),
    ],
  );
}