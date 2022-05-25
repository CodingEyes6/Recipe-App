import 'package:flutter/material.dart';
import '../../styles/textstyles.dart';
import '../tabs/Drawer/drawer.dart';

import '../../components/appBar.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _lasctoseFree = false;
  var _isVegetarian = false;
  var _isVegan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Filters'),
      drawer: MainDrawer(),
      body: Column(
        children: [
          pageTitle(),
          showSwitchesWithTitle()
        ],
      ),
    );
  }

  void onSwitchChange(bool value) {
    setState(() {
      _glutenFree = value;
    });
  }

  Widget showSwitchesWithTitle() {
    return Container(
      height: 300,
      child: ListView(
        children: [
          buildSwitchListTile(
            'Gluten-free',
            'Only Include Gluten Free Meals',
            _glutenFree,
            updateGlutenFreeSwitch,
          ),
          buildSwitchListTile(
            'Lactose-free',
            'Only Include Lactose Free Meals',
            _lasctoseFree,
            updateLactoseFreeSwitch,
          ),
          buildSwitchListTile(
            'Vegetarian',
            'Only Include Vegetarian Meals',
            _isVegetarian,
            isVegetarianFreeSwitch,
          ),
          buildSwitchListTile(
            'Vegan',
            'Only Include Vegan Free Meals',
            _isVegan,
            isVeganFreeSwitch,
          )
        ],
      ),
    );
  }

  Widget pageTitle() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        'Adjust your Meals',
        style: titleTextStyle,
      ),
    );
  }

  void updateGlutenFreeSwitch(bool value) {
    setState(() {
      _glutenFree = value;
    });
  }

  void updateLactoseFreeSwitch(bool value) {
    setState(() {
      _lasctoseFree = value;
    });
  }

  void isVeganFreeSwitch(bool value) {
    setState(() {
      _isVegan = value;
    });
  }

  void isVegetarianFreeSwitch(bool value) {
    setState(() {
      _isVegetarian = value;
    });
  }

  Widget buildSwitchListTile(
      String title, String subtitle, bool currValue, Function updateValue) {
    return SwitchListTile(
      value: currValue,
      onChanged: (value) => updateValue(value),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
