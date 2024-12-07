import 'package:flutter/material.dart';

class Infobox {
  String title;
  String description;
  ImageProvider image;
  Infobox(
      {required this.title, required this.description, required this.image});
}

List<Infobox> Infolist = [
  Infobox(
      description: "Bakım veya Onarım için anında randevu alın",
      image: const AssetImage("lib/Images/info-box-image/bed59b78-a223-4b63-aeb9-219d0a3e4772.jpg"),
      title: 'Hızlı Randevu'),
 
  Infobox(
      description:
          "Uzman ekibimiz tarafından aracınızın ağrızası hakkında bilgi edinin",
      image: const AssetImage("lib/Images/info-box-image/4.png"),
      title: "Arızam Nedir?"),
  Infobox(
      description: "Hızlı ve güvenlir servislerden yol yardım hizmeti alın",
      image: const AssetImage("lib/Images/info-box-image/5.png"),
      title: "Yol Yardım Hizmeti"),
  
];
