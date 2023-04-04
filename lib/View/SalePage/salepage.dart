import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/ItemController/ItemDetailController.dart';

class SalePage extends StatefulWidget {
  const SalePage({Key? key}) : super(key: key);

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ImageSlider(WOMENTSHIRT),
              TShirtStockDetails(),
              OffersDetails(),
              ItemDesc(),
              ItemDetails(),
              ItemInfo(),
              ItemRating()


            ],
          ),
        ),
      ),
    );
  }
}
