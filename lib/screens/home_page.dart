import 'package:flutter/material.dart';
import 'package:recette_app/widgets/nav_bar.dart';

import '../widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Header(),


                ],

              ),

            ),
        );

  }
}
