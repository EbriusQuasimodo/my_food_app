import 'package:flutter/material.dart';
import 'package:food_application/constants.dart';
import 'components/body_details.dart';
import 'components/app_bar.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }

}
