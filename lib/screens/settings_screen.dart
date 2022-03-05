import 'package:flutter/material.dart';

import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;
  final Settings settings;
  // ignore: use_key_in_widget_constructors
  const SettingsScreen(this.onSettingsChanged, this.settings);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(String title, bool value, Function(bool) onChanged) {
    return SwitchListTile.adaptive(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Raleway',
          color: Color.fromARGB(255, 185, 185, 185),
          fontWeight: FontWeight.bold,
        ),
      ),
      inactiveTrackColor: const Color.fromARGB(255, 141, 141, 141),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: const Color.fromARGB(255, 141, 141, 141),
        centerTitle: true,
        title: const Text('Settings'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 0,
              left: 15,
              right: 15,
            ),
            child: const Text(
              'Filters',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Only Gluten Free',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                _createSwitch(
                  'Only Lactose Free',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree = value),
                ),
                _createSwitch(
                  'Only Vegan',
                  settings.isVegan,
                  (value) => setState(() => settings.isVegan = value),
                ),
                _createSwitch(
                  'Only Vegetarian',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
