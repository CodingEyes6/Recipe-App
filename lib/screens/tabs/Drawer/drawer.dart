import 'package:flutter/material.dart';
import 'package:meals_app/Routes/routes.dart';
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
          bottomPart(context)
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

  Widget bottomPart(BuildContext ctx) {
    return Column(
      children: [
        buildItem(
          Icons.restaurant,
          'Meals',
          () => openNewScreen(ctx,AppRoutes.HOME_SCREEN),
        ),
        buildItem(
          Icons.settings,
          'Filters',
          () => openNewScreen(ctx,AppRoutes.FILTER_SCREEN),
        ),
      ],
    );
  }

  void openNewScreen(BuildContext ctx,String path) {
    AppRoutes.goToNextPage(ctx, path);
  }

  Widget buildItem(IconData icon, String text, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: style,
      ),
      onTap: tapHandler,
    );
  }

  final TextStyle style = const TextStyle(
      fontSize: 24, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold);
}
