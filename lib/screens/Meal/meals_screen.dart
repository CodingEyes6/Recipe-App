import 'package:flutter/material.dart';
import '../../components/appBar.dart';

class MealScreen extends StatelessWidget {


final String id;
final String title;

const MealScreen(this.id,this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title),
      body: Center(child: Text(title)),
    );
  }
}