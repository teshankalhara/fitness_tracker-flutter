import 'package:fitness_tracker/constant/color.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      color: backgroundColor,
      child: ListView.builder(
        itemCount: sideMenuData.sideMenu.length,
        itemBuilder: (context, index) {
          return _sideMenuList(sideMenuData, index);
        },
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          //print(selectedIndex);
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: selectedIndex == index ? selectionColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData.sideMenu[index].icon,
                color: selectedIndex == index ? blackColor : greyColor,
              ),
              SizedBox(width: 20),
              Text(
                sideMenuData.sideMenu[index].title,
                style: TextStyle(
                  fontSize: 16,
                  color: selectedIndex == index ? blackColor : greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
