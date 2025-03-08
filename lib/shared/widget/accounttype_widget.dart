import 'package:flutter/material.dart';
import '../../screen/authentication/accounttype_screen.dart';
import 'package:nozhati/shared/constant/app_color.dart';

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
          color:
              groupValue == accountType
                  ? AppColor().primaryColor
                  : AppColor().disabledColor,
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
                color:
                    groupValue == accountType
                        ? AppColor().primaryFontColor
                        : AppColor().disabledFontColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 80,
                  color:
                      groupValue == accountType
                          ? AppColor().primaryFontColor
                          : AppColor().disabledFontColor,
                ),
                Icon(
                  icontype,
                  size: 50,
                  color:
                      groupValue == accountType
                          ? AppColor().primaryFontColor
                          : AppColor().disabledFontColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
