import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:opening_page/Data/Infobox_data.dart';
import 'package:opening_page/Util/Sliding_text.dart';
import 'package:opening_page/Util/image_slide.dart';
import 'package:opening_page/Util/info_box.dart';
import 'package:opening_page/Util/my_button.dart';
import 'package:opening_page/auth/login_or_register.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  bool istaped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            HexColor("#0D1326"),
            HexColor("#0F2440"),
            HexColor("#0F2440"),
            HexColor("#313B59"),
            HexColor("#364159"),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset("lib/Images/Bitmap.png",height: MediaQuery.of(context).size.width * 0.1,),
                         Text(
                          "SAFE-SERVİS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.07,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: my_button(
                        text: "Giriş yap",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const login_or_register()));
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimateList(
                    children: [
                      const SlidingText(
                        text: "İki Teker Dünyasında",
                        delay: 0,
                      ),
                      const SlidingText(
                        text: "Güvenilir Servislerden",
                        delay: 100,
                      ),
                      const SlidingText(
                        text: "Hizmet Almaya Hazırmısın ?",
                        delay: 200,
                      ),
                    ],
                  ),
                ),
              ),
              const Center(child: imageslidefunction()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: InfoBox(
                        title: Infolist[0].title,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: InfoBox(
                      title: Infolist[1].title,
                    ),
                  ),
                ],
              ),
              InfoBox(
                title: Infolist[2].title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
