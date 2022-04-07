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
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(10.0)),
          child: Column(children: [
            Expanded(
              flex: 3,
              child: Image.asset('assets/images/heman.jpg',
              fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: textBoldColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0))
                ),
              ),
            )
          ]),
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
