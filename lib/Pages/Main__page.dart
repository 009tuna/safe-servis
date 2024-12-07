import 'package:flutter/material.dart';
import 'package:opening_page/Pages/Home_page.dart';
import 'package:opening_page/Pages/Profile_page.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int currentindex = 2;

  static const List screens = [
    Icon(Icons.one_k),
    Icon(Icons.person),
    HomePage(),
    Icon(Icons.car_crash),
    mainprofilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: screens.elementAt(currentindex),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.blue,
          indicatorColor: Colors.blueGrey[100],
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_repair_service_outlined,
                color: Colors.white,
              ),
              label: "Ariza",
              selectedIcon: Icon(
                Icons.home_repair_service,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              label: "Randevu",
              selectedIcon: Icon(
                Icons.calendar_month,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: "home",
              selectedIcon: Icon(
                Icons.home,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.motorcycle_outlined,
                color: Colors.white,
              ),
              label: "cars",
              selectedIcon: Icon(
                Icons.motorcycle,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              label: "profile",
              selectedIcon: Icon(
                Icons.person,
              ),
            ),
          ],
          selectedIndex: currentindex,
          onDestinationSelected: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
