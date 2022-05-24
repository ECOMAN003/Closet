import 'package:closet/screens/favoritescreen.dart';
import 'package:closet/screens/profilescreen.dart';
import 'package:closet/screens/searchscreen.dart';
import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  int gitVar = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final screens = const [
      HomeScreen(),
      SearchScreen(),
      FavoriteScreen(),
      ProfileScreen(),
    ];

    // ignore: prefer_const_declarations

    return Scaffold(
      backgroundColor: accentColor,
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: navBarColor,
          indicatorColor: mainColor,
        ),
        child: NavigationBar(
          animationDuration: const Duration(milliseconds: 600),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          height: 70,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: accentColor,
              ),
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: accentColor,
              ),
              icon: Icon(Icons.search_sharp),
              label: 'search',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite,
                color: accentColor,
              ),
              icon: Icon(Icons.favorite_border_outlined),
              label: 'favorites',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                color: accentColor,
              ),
              icon: Icon(Icons.person_outlined),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(appBarText: 'Closet'),
    );
  }
}

const navTextStyle = TextStyle(
  fontSize: 4.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);
