import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'buttons/favorite_button.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.activityThumbnail,
    required this.price,
    required this.activityName,
    required this.city,
  });

  final String activityThumbnail;
  final String activityName;
  final String city;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: AppLayout.getSize(context).width,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 11,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Thumbnail
              SizedBox(
                height: 55,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(activityThumbnail, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),

              // Activity Info
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(activityName, style: headLineStyle4),
                      width8,
                      const Icon(Icons.location_on_sharp,
                          color: primaryColor, size: 12),
                      const SizedBox(width: 2),
                      Text(city, style: headLineStyle6),
                    ],
                  ),
                  Text(
                    price != "FREE" ? '$price SR' : price,
                    style: headLineStyle5.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const FavoriteButton(iconSize: 20),
        ],
      ),
    );
  }
}
