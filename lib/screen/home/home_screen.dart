import 'package:flutter/material.dart';

import '../../shared/constant/app_asset.dart';
import '../../shared/widget/contentfilter_widget.dart';
import '../../shared/widget/navbar_widget.dart';
import '../../shared/widget/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  ContentType? selectedContentType = ContentType.all;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List getFilteredContent() {
    List allContent = [
      ...AppAsset().residence.map((e) => {...e, 'type': ContentType.residence}),
      ...AppAsset().vehicle.map((e) => {...e, 'type': ContentType.vehicle}),
      ...AppAsset().restaurant.map(
        (e) => {...e, 'type': ContentType.restaurant},
      ),
      ...AppAsset().park.map((e) => {...e, 'type': ContentType.park}),
    ];

    if (selectedContentType == ContentType.all) {
      allContent.shuffle();
      return allContent;
    }
    return allContent
        .where((item) => item['type'] == selectedContentType)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List filteredContent = getFilteredContent();

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppAsset.contentTypes.length,
                  itemBuilder: (context, index) {
                    return ContentFilter(
                      title: AppAsset.contentTypes[index]['title'],
                      icon: AppAsset.contentTypes[index]['icon'],
                      contentType: AppAsset.contentTypes[index]['type'],
                      groupValue: selectedContentType,
                      onChanged: (ContentType? value) {
                        setState(() {
                          selectedContentType = value;
                        });
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredContent.length,
                  itemBuilder: (context, index) {
                    return PostWidget(
                      name: filteredContent[index]['name'],
                      imageUrl: filteredContent[index]['imageUrl'],
                      rating: filteredContent[index]['rating'],
                      details: filteredContent[index]['details'],
                      type: filteredContent[index]['type'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
