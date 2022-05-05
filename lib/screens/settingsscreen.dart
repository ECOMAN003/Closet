import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(appBarText: 'Settings')
    );
  }
}
