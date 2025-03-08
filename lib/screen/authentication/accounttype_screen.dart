import 'package:flutter/material.dart';

import '../../shared/constant/app_color.dart';
import '../../shared/widget/accounttype_widget.dart';
import '../../shared/widget/appbar_widget.dart';
import '../../shared/widget/button_widget.dart';

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
      appBar: AppBarWidget(
        title: "Account Type",
        onPressed:
            () => Navigator.of(context).pushReplacementNamed("signup_screen"),
      ),
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
                backgroundColor:
                    _selectedAccountType == null
                        ? AppColor().disabledColor
                        : AppColor().primaryColor,
                foregroundColor:
                    _selectedAccountType == null
                        ? AppColor().disabledFontColor
                        : AppColor().primaryFontColor,
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
