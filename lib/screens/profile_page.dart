import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundColor: Colors.deepOrange[700],
                child: Icon(Icons.person, color: Colors.white, size: 50),
              ),
              const SizedBox(height: 16),
              const Text(
                "Jean Dupont",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "jean.dupont@email.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 32),
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
                    tileColor: Colors.grey,
                  ),
                  const SizedBox(height: 16),

                  const ListTile(
                    leading: Icon(
                      Icons.favorite_border,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      "Favoris",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Text(
                      "28",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      "Liste des courses",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Text(
                      "3",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const ListTile(
                    leading: Icon(
                      Icons.settings,
                    ),
                    title: Text(
                      "Paramètres",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    tileColor: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  const ListTile(
                    leading: Icon(
                      Icons.dark_mode_outlined,
                    ),
                    title: Text(
                      "Thème sombre",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    tileColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button action
                      print("Hello world !!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.blue.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(400, 50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout_outlined),
                        Text(
                          'Déconnexion',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
