import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  List<Widget> widgetList = const [
    //Replac with pages
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Favorite', style: TextStyle(fontSize: 40)),
    Text('Crée', style: TextStyle(fontSize: 40)),
    Text('Courses', style: TextStyle(fontSize: 40)),
    Text('Profil', style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
          NavigationDestination(icon: Icon(Icons.add), label: 'Crée'),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Courses',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
