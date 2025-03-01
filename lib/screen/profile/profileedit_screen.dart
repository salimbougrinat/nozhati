import 'package:flutter/material.dart';
import 'package:nozhati/shared/widget/appbar_widget.dart';
import 'package:nozhati/shared/widget/button_widget.dart';
import 'package:nozhati/shared/widget/input_widget.dart';
import 'package:nozhati/shared/widget/navbar_widget.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = 3;
    void onItemTapped(int index) {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBarWidget(title: 'Edit Profile'),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(''),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Full name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              InputWidget(
                label: "",
                obscure: false,
                keyboardType: TextInputType.name,
                inputAction: TextInputAction.done,
                onEditingComplete: () {},
              ),
              Text(
                "Username",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              InputWidget(
                label: "",
                obscure: false,
                keyboardType: TextInputType.name,
                inputAction: TextInputAction.done,
                onEditingComplete: () {},
              ),
              Text(
                "Email address",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              InputWidget(
                label: "",
                obscure: false,
                keyboardType: TextInputType.name,
                inputAction: TextInputAction.done,
                onEditingComplete: () {},
              ),
              Text("Phone number", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              InputWidget(label: "", obscure: false, keyboardType: TextInputType.name, inputAction: TextInputAction.done, onEditingComplete: (){}),
              SizedBox(height: 20),
              ButtonWidget(size: Size(MediaQuery.of(context).size.width, 60), label: "Done", onPressed: (){
                // Navigate to ProfileScreen
                Navigator.pop(context);
              })
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(selectedIndex: selectedIndex, onItemTapped: onItemTapped)
    );
  }
}
