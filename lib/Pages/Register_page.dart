import 'package:flutter/material.dart';
import 'package:opening_page/Data/Login_register_data.dart';
import 'package:opening_page/Pages/Main__page.dart';
import 'package:opening_page/Util/my_button.dart';
import 'package:opening_page/Util/my_textfield.dart';

class register_page extends StatefulWidget {
  final void Function()? onTap;
  const register_page({super.key, this.onTap});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final TextEditingController r_emailcontroller = TextEditingController();
  final TextEditingController r_passwordcontroller = TextEditingController();
  final TextEditingController r_confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController r_namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
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
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),

                //name Surname + mail + password + password confirm
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.3,
                  child: Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        final field = textfield_list[index + 2];
                        return my_textfield(
                            validator: field.validator,
                            controller: field.controller,
                            hinttext: field.hinttext,
                            obscureText: field.obscure,
                            icon: field.icon);
                      },
                    ),
                  ),
                ),

                //register button

                my_button(
                  text: "Kayıt ol",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const mainpage(),
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
                      "Hesabın Varsa ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Hemen Giriş Yap",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
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
                  style: TextStyle(color: Colors.blue),
                ),
                GestureDetector(
                    child: Image.asset(
                        "lib/Images/google-yeni-logosu-ve-g-harfi-ikonu-Photoroom 2.png")),
                const Text(
                  "ile giriş yap",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
