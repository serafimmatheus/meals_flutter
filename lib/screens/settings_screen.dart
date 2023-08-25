import 'package:flutter/material.dart';
import 'package:refeicoes/components/main_drawer.dart';
import 'package:refeicoes/models/settings.dart';

class SettingScreen extends StatefulWidget {
  final Function(Settings) onSettingsChange;
  final Settings settings;

  const SettingScreen({
    super.key,
    required this.settings,
    required this.onSettingsChange,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subTitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      value: value,
      onChanged: (value) => {
        onChanged(value),
        widget.onSettingsChange(settings),
      },
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Configurações",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _createSwitch(
                "Sem Glutén",
                "Filtra por comidas sem GLUTÉN",
                settings.isGlutenFree,
                (value) => setState(
                  () => settings.isGlutenFree = value,
                ),
              ),
              _createSwitch(
                "Sem Lactose",
                "Filtra por comidas sem LACTOSE",
                settings.isLactoseFree,
                (value) => setState(
                  () => settings.isLactoseFree = value,
                ),
              ),
              _createSwitch(
                "Vegana",
                "Filtra por comidas VEGANAS",
                settings.isVegan,
                (value) => setState(
                  () => settings.isVegan = value,
                ),
              ),
              _createSwitch(
                "Vegetariana",
                "Filtra por comidas VEGETARIANAS",
                settings.isVegetarian,
                (value) => setState(
                  () => settings.isVegetarian = value,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
