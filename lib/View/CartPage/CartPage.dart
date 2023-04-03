import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/CartController/CartController.dart';
import 'package:patel_brothers/Controller/HomeController/HomePageController.dart';
import 'package:get/get.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart (3 items)'),
                  Text('₹ 2,207.00', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
                ],
              ),
              Column(
                  children: [
                    cartitem(),
                    BuildTopOffers(),
                    CouponDetail(),
                    PaymentDetail(),
                    PaceOrderDeatil()
                  ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


