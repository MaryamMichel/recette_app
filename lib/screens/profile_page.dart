import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEAE8),
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
              Text(
                "Jean Dupont",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "jean.dupont@email.com",
                style: TextStyle(
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
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(
                      Icons.favorite_border,
                      color: Colors.deepOrange,
                    ),
                    title: const Text(
                      "Favoris",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: const Text(
                      "28",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange,
                    ),
                    title: const Text(
                      "Liste des courses",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: const Text(
                      "3",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(
                      Icons.settings,
                    ),
                    title: const Text(
                      "Paramètres",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    tileColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(
                      Icons.dark_mode_outlined,
                    ),
                    title: const Text(
                      "Thème sombre",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    tileColor: Colors.grey[300],

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
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
