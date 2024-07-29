import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls + Tiles'),
      ), // AppBar
      body: const _UiControlsView(),
    ); // Scaffold
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}


enum Transportation { car, plane, boat, submarine }
class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })
        ), // SwitchListTile
        RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Viajar por carro'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
        ), // RadioListTile
        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Viajar por avión'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
        ), // RadioListTile
        RadioListTile(
          title: const Text('By Boat'),
          subtitle: const Text('Viajar por barco'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ), // RadioListTile
        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Viajar por submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
        ), // RadioListTile
      ],
    ); // ListView
  }
}