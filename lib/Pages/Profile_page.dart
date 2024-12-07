import 'package:flutter/material.dart';
import 'package:opening_page/Data/profilebuttons_data.dart';
import 'package:opening_page/Util/my_button.dart';
import 'package:opening_page/Util/my_userbuttons.dart';
import 'package:opening_page/auth/login_or_register.dart';

class mainprofilepage extends StatelessWidget {
  const mainprofilepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //image

                  ClipOval(
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(120)),
                        child: Image.asset(
                          "lib/Images/Bitmap.png",
                          fit: BoxFit.fill,
                        )),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width / 8,
                  ),

                  //Name

                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Isim",
                          style: TextStyle(fontSize: 44),
                        ),
                        Text(
                          "...................................................................................",
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: profilebuttonlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = profilebuttonlist[index];
                    return MyUserbuttons(
                      icon: data.icon,
                      text: data.text,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => data.onTap!(),
                            ));
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              my_button(
                text: "Cikis Yap",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login_or_register(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
