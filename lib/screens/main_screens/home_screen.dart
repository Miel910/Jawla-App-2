import 'package:flutter/material.dart';
import '../../components/cards/activity_card.dart';
import '../../components/cards/big_activity_card.dart';
import '../../components/general/my_search_bar.dart';
import '../../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Explore Saudi Arabia! Row
                const Text("Explore", style: headLineStyle1),
                const Text("Saudi Arabia!", style: headLineStyle1),
                height24,

                // Search Bar
                const MySearchBar(hintText: "Search Places"),
                height24,

                // Trending places Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Trending places", style: headLineStyle2),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text("Show more", style: headLineStyle5),
                          width4,
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: greyTextColor,
                            size: 7,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Trending Activity Cards
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                width24,
                BigActivityCard(
                  activityThumbnail: "/thumbnails/diving.png",
                  price: "250",
                  activityName: "Diving Tours",
                  city: "Jeddah",
                ),
                BigActivityCard(
                  activityThumbnail: "/thumbnails/diriyah.png",
                  price: "FREE",
                  activityName: "Old Town",
                  city: "Riyadh",
                ),
                BigActivityCard(
                  activityThumbnail: "/thumbnails/archery.png",
                  price: "100",
                  activityName: "ARCHERY RANGE",
                  city: "Taif",
                ),
                BigActivityCard(
                  activityThumbnail: "/thumbnails/PARAGLIDING.png",
                  price: "150",
                  activityName: "PARAGLIDING",
                  city: "Abha",
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),

          // Activities Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Activities", style: headLineStyle2),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "Show more",
                            style: headLineStyle5,
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: greyTextColor,
                            size: 7,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9),

                // Activities Cards
                const SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ActivityCard(
                        activityThumbnail: "/thumbnails/PARAGLIDING.png",
                        price: "150",
                        activityName: "PARAGLIDING",
                        city: "Abha",
                      ),
                      ActivityCard(
                        activityThumbnail: "/thumbnails/archery.png",
                        price: "100",
                        activityName: "ARCHERY RANGE",
                        city: "Taif",
                      ),
                      ActivityCard(
                        activityThumbnail: "/thumbnails/diriyah.png",
                        price: "FREE",
                        activityName: "Old Town",
                        city: "Riyadh",
                      ),
                      ActivityCard(
                        activityThumbnail: "/thumbnails/diving.png",
                        price: "250",
                        activityName: "Diving Tours",
                        city: "Jeddah",
                      ),
                      ActivityCard(
                        activityThumbnail: "/thumbnails/PARAGLIDING.png",
                        price: "150",
                        activityName: "PARAGLIDING",
                        city: "Abha",
                      ),
                      ActivityCard(
                        activityThumbnail: "/thumbnails/archery.png",
                        price: "100",
                        activityName: "ARCHERY RANGE",
                        city: "Taif",
                      ),
                    ],
                  ),

                  // child: Row(
                  //     children: activitylist
                  //         .map((singleActivity) =>
                  //             ActivityView(activity: singleActivity))
                  //         .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
