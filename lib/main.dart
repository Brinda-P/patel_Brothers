import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/View/CartPage/CartPage.dart';
import 'package:patel_brothers/View/HomePage/homepage.dart';
import 'package:patel_brothers/View/ItemPage/ApparelPage.dart';
import 'package:patel_brothers/View/ItemPage/OfferItemPage.dart';


void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primaryColor: AppColors.THEME_COLOR,
      fontFamily: 'Poppins'
    ),
    initialRoute: '/homepage',
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/homepage', page: () => HomePage(),),
      GetPage(name: '/offeritem', page: () => OfferItemPage(),),
      GetPage(name: '/apparelpage', page: () => ApparelPage(),),
      GetPage(name: '/cartpage', page: () => CartPage(),),
    ],
  ));
}

