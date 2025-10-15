import 'package:flutter/material.dart';
import 'package:recette_app/Widgets/nav_bar.dart';
import '../Widgets/categories.dart';
import '../widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
          child: Column(
            children: [
              Column(
                children: [
                  Header(),
                ],
              ),
              CategoriesWidget(),
              const SizedBox(height: 16),
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.restaurant_menu,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      "Mes recettes",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Text(
                      "12",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox( height: 18, width: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
