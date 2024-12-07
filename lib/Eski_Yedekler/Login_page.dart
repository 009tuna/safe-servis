import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:opening_page/Data/Login_register_data.dart';
import 'package:opening_page/Pages/Main__page.dart';
import 'package:opening_page/Util/my_button.dart';
import 'package:opening_page/Util/my_textfield.dart';

class login_page extends StatefulWidget {
  final void Function()? onTap;
  const login_page({super.key, this.onTap});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            HexColor("#0D1326"),
            HexColor("#0F2440"),
            HexColor("#0F2440"),
            HexColor("#313B59"),
            HexColor("#364159"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    //Logo
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "lib/Images/Bitmap.png",
                        fit: BoxFit.fill,
                      ),
                    ),

                    //Title
                    const Text(
                      "SAFE-SERVİS",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),

                //Email + Password

                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        final field = textfield_list[index];
                        return my_textfield(
                            validator: (p0) => '',
                            controller: field.controller,
                            hinttext: field.hinttext,
                            obscureText: field.obscure,
                            icon: field.icon);
                      },
                    ),
                  ),
                ),

                //Login Button
                my_button(
                  text: "Giriş Yap",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mainpage(),
                        ));
                  },
                ),

                //register oage enter
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Üye Değilsen ",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Hemen Üye ol",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                //google
                const Text(
                  "Ya da",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                    child: Image.asset(
                        "lib/Images/google-yeni-logosu-ve-g-harfi-ikonu-Photoroom 2.png")),
                const Text(
                  "ile giriş yap",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
