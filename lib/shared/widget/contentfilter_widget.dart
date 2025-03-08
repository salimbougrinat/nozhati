import 'package:flutter/material.dart';
import 'package:nozhati/shared/constant/app_color.dart';

enum ContentType { all, residence, vehicle, restaurant, park }

class ContentFilter extends StatelessWidget {
  final String title;
  final IconData icon;
  final ContentType contentType;
  final ContentType? groupValue;
  final ValueChanged<ContentType> onChanged;

  const ContentFilter({
    super.key,
    required this.title,
    required this.icon,
    required this.contentType,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(contentType),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  groupValue == contentType
                      ? AppColor().primaryColor
                      : AppColor().disabledColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color:
                      groupValue == contentType
                          ? AppColor().primaryFontColor
                          : AppColor().disabledFontColor,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color:
                        groupValue == contentType
                            ? AppColor().primaryFontColor
                            : AppColor().disabledFontColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
