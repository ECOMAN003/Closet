// ignore_for_file: prefer_const_constructors

import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(
          appBarText: 'Favorites', appBarIcon: Icons.favorite_outline),
      body: FavoriteScreenBody(),
    );
  }
}

class FavoriteScreenBody extends StatefulWidget {
  const FavoriteScreenBody({Key? key}) : super(key: key);

  @override
  State<FavoriteScreenBody> createState() => _FavoriteScreenBodyState();
}

Padding favoriteBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
          image: DecorationImage(
            image: AssetImage('assets/images/heman.jpg'),
          )),
    ),
  );
}

class _FavoriteScreenBodyState extends State<FavoriteScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          favoriteBody(context),
          favoriteBody(context),
          favoriteBody(context),
        ],
      ),
    );
  }
}
