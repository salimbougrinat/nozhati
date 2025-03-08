import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constant/app_asset.dart';
import '../constant/app_color.dart';
import 'contentfilter_widget.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double rating;
  final Map<String, dynamic> details;
  final ContentType type;
  const PostWidget({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.details,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    String detail1, detail2, detail3;
    switch (type) {
      case ContentType.park:
      case ContentType.restaurant:
        detail1 = 'address';
        detail2 = 'open time';
        detail3 = 'close time';
        break;
      case ContentType.residence:
        detail1 = 'address';
        detail2 = 'price';
        detail3 = 'time unit';
        break;
      case ContentType.vehicle:
        detail1 = 'seats count';
        detail2 = 'price';
        detail3 = 'time unit';
        break;
      default:
        detail1 = 'detail1';
        detail2 = 'detail2';
        detail3 = 'detail3';
        break;
    }
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor().secondaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              '${detail1 == 'seats count' ? 'Seats: ' : ''}${details[detail1] ?? 'N/A'}',
              style: TextStyle(
                fontSize: 15,
                color: AppColor().secondaryFontColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: AppAsset().restaurant[0]['rating'],
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2),
                  itemBuilder:
                      (context, _) => Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (double value) {},
                ),
                Row(
                  spacing: 2,
                  children: [
                    Text(
                      '${details[detail2] ?? 'N/A'} / ${details[detail3] ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
