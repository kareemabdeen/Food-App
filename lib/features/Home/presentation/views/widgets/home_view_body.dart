import 'package:flutter/material.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';
import '../../../../../core/utils/styles.dart';
import 'category_item_widget.dart';
import 'custom_appBar.dart';
import 'custom_carousel_slider.dart';
import 'custom_search_text_field.dart';
import 'list_view_with_title.dart';
import 'resturant_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: CustomAppBar(
              title: 'Deliver Now',
              titleStyle: StylesManager.textStyle16
                  .copyWith(color: Colors.black.withOpacity(0.5)),
              subTitle: 'Hi guest',
              subTitleStyle: StylesManager.textStyle30,
              icon: Icons.person_outline,
              iconFunction: () => context.pushWithReplacmentNamed(
                AppRouter
                    .kMenuPage, // Todo:  recheck name on these page => meeting
              ),
            ),
          ),
          SizedBox(
            height: 56,
            width: context.screenWidth,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: CustomSearchTextField(
                borderRadius: 26,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItem(),
                SizedBox(width: 10),
                CategoryItem(),
                SizedBox(width: 10),
                CategoryItem(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCarouselSlider(),
          ),
          const ListViewWithTitle(
            listViewTitle: 'Best Offers',
            scrollDirection: Axis.horizontal,
            listViewWidget: ResturantListViewItem(),
            physics: BouncingScrollPhysics(),
          ),
          const SizedBox(height: 15),
          const ListViewWithTitle(
            scrollDirection: Axis.horizontal,
            listViewTitle: 'Popular Restaurants',
            listViewWidget: ResturantListViewItem(),
            physics: BouncingScrollPhysics(),
          ),
          const SizedBox(height: 15),
          const ListViewWithTitle(
            scrollDirection: Axis.horizontal,
            listViewTitle: 'Best To Dine-In',
            listViewWidget: ResturantListViewItem(),
            physics: BouncingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
