import 'package:flutter/material.dart';
import '../../styles/textstyles.dart';
import '../tabs/Drawer/drawer.dart';



class FilterScreen extends StatefulWidget {

 final Function _saveFilters;
 final Map<String,bool> currentFilters;

 const FilterScreen(this._saveFilters,this.currentFilters);


 

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _lasctoseFree = false;
  var _isVegetarian = false;
  var _isVegan = false;


@override
  void initState() {
    super.initState();

 _glutenFree = widget.currentFilters['gluten'] as bool;
_lasctoseFree = widget.currentFilters['lactose'] as bool;
_isVegan = widget.currentFilters['vegan'] as bool;
_isVegetarian = widget.currentFilters['vegetarian'] as bool;
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
        actions: [
          IconButton(onPressed: () {
            
  final Map<String, bool> userFilters = {
    'gluten': _glutenFree,
    'lactose': _lasctoseFree,
    'vegan': _isVegan,
    'vegetarian': _isVegetarian,
  };
            widget._saveFilters(userFilters);}, icon: const Icon(Icons.save))
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          pageTitle(),
          showSwitchesWithTitle()
        ],
      ),
    );
  }

 

  Widget showSwitchesWithTitle() {
    return SizedBox(
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
