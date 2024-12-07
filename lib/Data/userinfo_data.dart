import 'package:flutter/material.dart';

class userinfo {
  TextEditingController Controller = TextEditingController();
  String hinttext;
  String? Function(String?)? validator;
  userinfo(
      {required this.Controller,
      required this.hinttext,
      required this.validator});
}

List<userinfo> userinfolist = [
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'Isim Soyisim',
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'İsminizi ve soyiminizi belirtiniz';
      } else if (!RegExp(r'^[a-zA-ZğüşöçıİĞÜŞÖÇ]+$').hasMatch(value)) {
        return 'Geçerli bir isim soyisim giriniz';
      }
      return null;
    },
  ),
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'dogum yili (degiseceik)',
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Doğum tarihinizi girin';
      } else if (!RegExp(r'^\d{2}/\d{2}/\d{4}$').hasMatch(value)) {
        return 'Geçerli bir doğum tarihi giriniz (gg/aa/yyyy)';
      }
      return null;
    },
  ),
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'cinsiyet(degisecek)',
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Cinsiyetinizi belirtiniz';
      } else if (value.toLowerCase() != 'kız' &&
          value.toLowerCase() != 'erkek') {
        return 'Lütfen cinsiyetinizi belirtiniz';
      }
      return null;
    },
  ),
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'mail adresi',
    validator: (value) {
      if (value == null || !value.contains('@gmail.com')) {
        return 'Geçerli bir e-posta adresi girin';
      }
      return null;
    },
  ),
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'Telefon numarasi',
    validator: (value) {
      if (value == null) {
        return 'Lütfen boşluğu doldurunuz';
      } else if (!RegExp('1234567890').hasMatch(value)) {
        return 'Lütfen geçerli bir telefon numarası giriniz';
      }
      return null;
    },
  ),
  userinfo(
    Controller: TextEditingController(),
    hinttext: 'il',
    validator: (value) {
      if (value == null) {
        return 'Lütfen boşluğu doldurunuz';
      } else {
        return null;
      }
    },
  ),
];
