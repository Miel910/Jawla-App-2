import 'package:flutter/material.dart';
import '../components/trending_activity_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TrendingActivityCard(
                  activityThumbnail: "/thumbnails/diving.png",
                  price: "250",
                  activityName: "Diving Tours",
                  city: "Jeddah",
                ),
                TrendingActivityCard(
                  activityThumbnail: "/thumbnails/diriyah.png",
                  price: "FREE",
                  activityName: "Old Town",
                  city: "Riyadh",
                ),
                TrendingActivityCard(
                  activityThumbnail: "/thumbnails/archery.png",
                  price: "100",
                  activityName: "ARCHERY RANGE",
                  city: "Taif",
                ),
                TrendingActivityCard(
                  activityThumbnail: "/thumbnails/PARAGLIDING.png",
                  price: "150",
                  activityName: "PARAGLIDING",
                  city: "Abha",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
