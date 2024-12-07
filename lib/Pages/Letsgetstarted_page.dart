import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:opening_page/Util/my_button.dart';
import 'package:opening_page/auth/login_or_register.dart';

class LetsgetstartedPage extends StatelessWidget {
  const LetsgetstartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(children: [
          Animate(
            effects: [
              FadeEffect(duration: 1000.ms),
              MoveEffect(begin: const Offset(0, 200), duration: 1.seconds)
            ],
            child: Positioned(
              bottom: -200,
              right: -200,
              child: Container(
                height: 800,
                width: 800,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50, // Yukarıya taşımak için top değerini kullanıyoruz
            left: 20, // Konumu sola kaydırmak isterseniz
            right: 20,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "lib/Images/Bitmap.png",
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "SAFE-SERVİS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    color: Colors.blue),
              ),
            ]),
          ),
          Animate(
            effects: [
              FadeEffect(duration: 1000.ms),
              MoveEffect(begin: const Offset(0, 200), duration: 1.seconds)
            ],
            child: Positioned(
              bottom: 100, // Butonun konumunu belirlemek için
              left: 20,
              right: 20,
              child: my_button(
                text: "Lets Get Started",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const login_or_register()));
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
