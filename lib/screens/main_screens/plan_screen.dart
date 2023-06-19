import 'package:flutter/material.dart';

import '../../components/cards/added_activity_card.dart';
import '../../components/plan_date_picker/plan_date_picker.dart';
import '../../constants/constants.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          height48,

          // Date Picker
          const PlanDatePicker(),
          height24,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // My Trip Plan
                const Text("My Trip Plan", style: headLineStyle1),
                height16,

                // Added Activity Cards
                Column(
                  children: [
                    AddedActivityCard(
                      activityThumbnail: "/thumbnails/PARAGLIDING.png",
                      price: "150",
                      activityName: "PARAGLIDING",
                      city: "Abha",
                      activityTime:
                          '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    ),
                    AddedActivityCard(
                      activityThumbnail: "/thumbnails/archery.png",
                      price: "100",
                      activityName: "ARCHERY RANGE",
                      city: "Taif",
                      activityTime:
                          '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                      // DateTime.parse('1969-07-20 20:18:04Z')
                    ),
                    AddedActivityCard(
                      activityThumbnail: "/thumbnails/diriyah.png",
                      price: "FREE",
                      activityName: "Old Town",
                      city: "Riyadh",
                      activityTime:
                          '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    ),
                    AddedActivityCard(
                      activityThumbnail: "/thumbnails/diving.png",
                      price: "250",
                      activityName: "Diving Tours",
                      city: "Jeddah",
                      activityTime:
                          '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                      isLast: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
