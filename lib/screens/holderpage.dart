import 'package:aircast_2/controller/app_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../controller/app_state_controller.dart';

class HolderPage extends StatelessWidget {
  const HolderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateController>(
      builder: (context, appStateController, child) {
        return Scaffold(
          body: appStateController.screens[appStateController.selectedScreenIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: appStateController.selectedScreenIndex,
            onTap: appStateController.selectedScreenItem,
            selectedItemColor: HexColor("0353A4"),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home) ,
                label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal) ,
                label: "Search"
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.grid_2) ,
                label: "Collections"
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.menu_1),
                label: "Menu"
              ),
            ]
          ),
        );
      }
    );
  }
}