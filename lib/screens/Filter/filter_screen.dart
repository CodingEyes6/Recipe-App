import 'package:flutter/material.dart';
import '../tabs/Drawer/drawer.dart';

import '../../components/appBar.dart';


class FilterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Filters'),
      drawer: MainDrawer(),
    );
  }
}