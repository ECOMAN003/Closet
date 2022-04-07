import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(appBarText: 'Search', appBarIcon: Icons.search_sharp),
    );
  }
}