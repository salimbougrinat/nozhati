import 'package:flutter/material.dart';

import '../../shared/widget/appbar_widget.dart';
import '../../shared/widget/navbar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = 1;
    void onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBarWidget(title: "Search",
        onPressed:
            () => Navigator.of(context).pushReplacementNamed("home_screen"),
      ),
      body: Center(child: Text('Search Screen')),
      bottomNavigationBar: NavBarWidget(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
