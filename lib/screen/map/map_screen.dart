import 'package:flutter/material.dart';
import 'package:nozhati/shared/widget/appbar_widget.dart';
import 'package:nozhati/shared/widget/navbar_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = 2;
    void onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBarWidget(
        title: "Map",
        onPressed:
            () => Navigator.of(context).pushReplacementNamed("home_screen"),
      ),
      body: Center(child: Text('Map Screen')),
      bottomNavigationBar: NavBarWidget(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
