import 'package:flutter/material.dart';
import 'package:opening_page/Pages/Userinfo_page.dart';
import 'package:opening_page/Pages/araclar%20kopyas%C4%B1.dart';

class profilebutton {
  String text;
  IconData icon;
  Widget Function()? onTap;
  profilebutton({required this.text, required this.icon, required this.onTap});
}

List<profilebutton> profilebuttonlist = [
  profilebutton(
    text: "Kullanici islemleri",
    icon: Icons.person,
    onTap: () {
      return userinfopage();
    },
  ),
  profilebutton(
    text: "Sifre islemleri",
    icon: Icons.key,
    onTap: () {return userinfopage();},
  ),
  profilebutton(
    text: "Araclarim",
    icon: Icons.car_crash,
    onTap: () {return Araclarim();},
  ),
  profilebutton(
    text: "Randevularim",
    icon: Icons.calendar_month,
    onTap: () {return userinfopage();},
  ),
  profilebutton(
    text: "Degerlendirmelerim",
    icon: Icons.reviews,
    onTap: () {return userinfopage();},
  ),
];
