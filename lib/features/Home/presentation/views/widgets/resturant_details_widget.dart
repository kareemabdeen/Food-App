import 'package:flutter/material.dart';

import '../Styles/ItemsTextStyles.dart';
import 'resturant_rating_distance_widget.dart';

class ResturantDetailsWidget extends StatelessWidget {
  const ResturantDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Momoz', style: ItemsTextStyles.textStyle18),
          Text('Chinese | Thai | Seaf..',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ItemsTextStyles.textStyle13),
          ResturantRatingAndDistanceWidget()
        ],
      ),
    );
  }
}