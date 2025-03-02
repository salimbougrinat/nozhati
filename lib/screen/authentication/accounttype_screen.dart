import 'package:flutter/material.dart';
import 'package:nozhati/shared/widget/appbar_widget.dart';
import 'package:nozhati/shared/widget/button_widget.dart';

enum AccountType { serviceProvider, client }

class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({super.key});

  @override
  State<AccountTypeScreen> createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  AccountType? _selectedAccountType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Account Type", onPressed: () => Navigator.of(context).pushReplacementNamed("signup_screen")),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AccountTypeWidget(
                    title: 'Service provider',
                    icontype: Icons.shopping_bag,
                    accountType: AccountType.serviceProvider,
                    groupValue: _selectedAccountType ?? AccountType.client,
                    onChanged: (AccountType? value) {
                      setState(() {
                        _selectedAccountType = value;
                      });
                    },
                  ),
                  AccountTypeWidget(
                    title: 'Client',
                    icontype: Icons.monetization_on,
                    accountType: AccountType.client,
                    groupValue: _selectedAccountType,
                    onChanged: (AccountType? value) {
                      setState(() {
                        _selectedAccountType = value;
                      });
                    },
                  ),
                ],
              ),
              ButtonWidget(
                backgroundColor: _selectedAccountType == null ? Colors.grey[300] : Colors.green,
                foregroundColor: _selectedAccountType == null ? Colors.grey[600] : Colors.white,
                size: Size(MediaQuery.of(context).size.width, 60),
                label: "Done",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("home_screen");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountTypeWidget extends StatelessWidget {
  final String title;
  final IconData icontype;
  final AccountType accountType;
  final AccountType? groupValue;
  final ValueChanged<AccountType> onChanged;

  const AccountTypeWidget({
    super.key,
    required this.title,
    required this.icontype,
    required this.accountType,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(accountType),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: groupValue == accountType ? Colors.green : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: groupValue == accountType ? Colors.white : Colors.grey[600],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 80,
                  color: groupValue == accountType ? Colors.white : Colors.grey[600],
                ),
                Icon(
                  icontype,
                  size: 50,
                  color: groupValue == accountType ? Colors.white : Colors.grey[600],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
