import 'package:codelab_2/models/bottom_bar_model.dart';
import 'package:codelab_2/pages/landing_page.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarModel> _bottomBarItems = [
    BottomBarModel(icon: Icons.explore_outlined, isSelected: true),
    BottomBarModel(icon: Icons.favorite_border, isSelected: false),
    BottomBarModel(icon: Icons.comment_outlined, isSelected: false),
    BottomBarModel(icon: Icons.account_circle_outlined, isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_bottomBarItems.length, (index) {
            var barItemWidget = _bottomBarItems[index];

            return IconButton(
                onPressed: () {
                  setState(() {
                    _bottomBarItems.forEach((element) {
                      element.isSelected = element == barItemWidget;
                    });
                  });
                },
                icon: Icon(barItemWidget.icon,
                    color:
                        barItemWidget.isSelected ? mainYellow : Colors.grey));
          })),
    );
  }
}
