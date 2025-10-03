import 'package:flutter/material.dart';

import '../widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white70,
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
