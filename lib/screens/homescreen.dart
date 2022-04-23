import 'package:closet/screens/favoritescreen.dart';
import 'package:closet/screens/profilescreen.dart';
import 'package:closet/screens/searchscreen.dart';
import 'package:closet/screens/settingsscreen.dart';
import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:closet/utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      SearchScreen(),
      FavoriteScreen(),
      SettingsScreen(),
      ProfileScreen(),
    ];

    // ignore: prefer_const_declarations
    final items = const <Widget>[
      Icon(
        Icons.home,
        size: 30,
        color: accentColor,
      ),
      Icon(
        Icons.search,
        size: 30,
        color: accentColor,
      ),
      Icon(
        Icons.favorite,
        size: 30,
        color: accentColor,
      ),
      Icon(
        Icons.settings,
        size: 30,
        color: accentColor,
      ),
      Icon(
        Icons.person,
        size: 30,
        color: accentColor,
      ),
    ];
    return Scaffold(
      backgroundColor: accentColor,
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        animationDuration: const Duration(milliseconds: 300),
        buttonBackgroundColor: mainColor,
        color: mainColor,
        backgroundColor: Colors.transparent,   
        items: items,
        height: 60.0,
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
      body: screens[index],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(appBarText: 'Closet', appBarIcon: Icons.cabin),
    );
  }
}
