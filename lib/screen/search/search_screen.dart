import 'package:flutter/material.dart';
import 'package:nozhati/shared/widget/appbar_widget.dart';
import 'package:nozhati/shared/widget/navbar_widget.dart';

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
      appBar: AppBarWidget(title: "Search"),
      body: Center(child: Text('Search Screen')),
      bottomNavigationBar: NavBarWidget(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
