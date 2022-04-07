// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:closet/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:closet/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: accentColor,
      appBar: displayAppBar(appBarText: 'Profile', appBarIcon: Icons.person_outlined),
      body: ProfileScreenBody(),
    );
  }
}

class ProfileScreenBody extends StatefulWidget {

  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

Padding profileBody(
    {required double topPadding, 
    required String? displayText, 
    required Color displayColor,
    required double displaySize,
     String? displayFont,
    }) {
    return Padding(
      padding:  EdgeInsets.only(top: topPadding),
      child: Text(
        '$displayText',
        style: TextStyle(color: displayColor, fontWeight: FontWeight.bold, fontSize: displaySize, fontFamily: displayFont),
      ),
    );
  }

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/sylvia.jpg'),
            ),
          ),
          profileBody(topPadding: 20.0, displayText: 'USERNAME:', displayColor: textColor, displaySize: 15.0),
          profileBody(topPadding: 1.0, displayText: 'PEDIAPL_RIATORIS', displayColor: textBoldColor, displaySize: 20.0, displayFont: 'Pacifico'),
          profileBody(topPadding: 20.0, displayText: 'LANGUAGE:', displayColor: textColor, displaySize: 15.0),
          profileBody(topPadding: 1.0, displayText: 'English', displayColor: textBoldColor, displaySize: 20.0, displayFont: 'Pacifico'),
        ],
      ),
    );
  }
}
