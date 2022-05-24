import 'package:flutter/material.dart';
import '../../../Colors/colors.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          topBox(),
          const SizedBox(
            height: 20,
          ),
          bottomPart()
        ],
      ),
    );
  }

  Widget topBox() {
    return Container(
      color: accentColor,
      width: double.infinity,
      height: 120,
      alignment: Alignment.center,
      child: topBoxTitleText(),
    );
  }

  Widget topBoxTitleText() {
    return const Text(
      'Cooking up',
      style: TextStyle(
          fontWeight: FontWeight.w900, fontSize: 30, color: primaryColor),
    );
  }

  Widget bottomPart() {
    return Column(
      children: [
        buildItem(Icons.restaurant, 'Meals'),
          buildItem(Icons.settings ,'Filters'),
      ],
    );
  }

  Widget buildItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: style,
      ),
    );
  }

 final TextStyle style = const TextStyle(
      fontSize: 24, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold);
}
