import 'package:flutter/material.dart';
import 'package:nozhati/shared/constant/app_color.dart';
import 'package:nozhati/shared/widget/appbar_widget.dart';
import 'package:nozhati/shared/widget/navbar_widget.dart';
import 'package:nozhati/shared/widget/settingchoice_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = 3;
    void onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile',
        onPressed:
            () => Navigator.of(context).pushReplacementNamed("home_screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 50, backgroundImage: AssetImage('')),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@Username',
                        style: TextStyle(
                          color: AppColor().primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            AppColor().primaryColor,
                          ),
                          foregroundColor: WidgetStateProperty.all(
                            AppColor().primaryFontColor,
                          ),
                        ),
                        child: Row(
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.edit,
                              color: AppColor().primaryFontColor,
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed("profileedit_screen");
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SettingChoiceWidget(
                leading: Icons.messenger_outline,
                title: "My messages",
                onTap: () {},
              ),
              SettingChoiceWidget(
                leading: Icons.notes,
                title: "My bookings",
                onTap: () {},
              ),
              SettingChoiceWidget(
                leading: Icons.star_outline,
                title: "My Favourites",
                onTap: () {},
              ),
              SettingChoiceWidget(
                leading: Icons.history_outlined,
                title: "My history",
                onTap: () {},
              ),
              Divider(color: Colors.black),
              SettingChoiceWidget(
                leading: Icons.logout,
                title: "Sign-out",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("signin_screen");
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
