import 'package:flutter/material.dart';

import '../../screen/setting/setting_screen.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onPressed;
  const AppBarWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: onPressed ?? () => Navigator.pop(context),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.settings_outlined),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingScreen()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
