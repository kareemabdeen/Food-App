import 'package:flutter/material.dart';

import 'custom_swipe_container_widget.dart';

class CustomSwipeContainersList extends StatelessWidget {
  const CustomSwipeContainersList({
    super.key,
    required this.currentPageNumber,
    required this.itemCount,
  });

  final int currentPageNumber;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        itemCount,
        (index) {
          return CustomSwipeContainer(
            height: index <= currentPageNumber ? 3.9 : 3.36,
            color: currentPageNumber >= index
                ? Colors.black
                : const Color(
                    0xffDADADA,
                  ),
          );
        },
      ),
    );
  }
}
