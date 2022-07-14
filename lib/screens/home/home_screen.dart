import 'package:flutter/material.dart';

import '../../components/bottom_nav_bar.dart';
import '../../constants.dart';
import '../components/app_bar.dart';
import '../components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context), // файл с app_bar.dart,
      bottomNavigationBar: BottomNavBar(),
      body: Body(), //в файле body_details.dart
    );
  }
  
}



