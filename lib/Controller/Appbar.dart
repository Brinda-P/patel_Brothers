import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

AppBar CustomAppBar(){
  return AppBar(
    backgroundColor: AppColors.THEME_COLOR,
    title: Text('PATEL BROTHERS',
      style: TextStyle(
          fontSize: 16),
    ),
    elevation: 0,
    centerTitle: true,
    actions: [
      Center(
        child: badges.Badge(
          badgeContent : Text('1', style: TextStyle(color: Colors.white,fontSize: 10),),
          position: badges.BadgePosition.topEnd(end: -5),
          child: Icon(Icons.notifications),
        ),
      ),
      SizedBox(width: 20),
      InkWell(
        onTap: () {
          Get.toNamed('/cartpage');
        },
        child: Center(
          child: badges.Badge(
            badgeContent : Text('1', style: TextStyle(color: Colors.white,fontSize: 10),),
            child: Icon(Icons.shopping_cart),
          ),
        ),
      ),
      SizedBox(width: 20),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child :
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey,
                      hintText: 'search products & brands',
                      suffixIcon: Icon(Icons.mic),
                      suffixIconColor: Colors.grey,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.qr_code_scanner, color: Colors.white,)
            ],
          ),
          //Spacer(),
        ),
      ),
    ),

  );
}