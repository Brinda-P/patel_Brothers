import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/HomeController/HomePageController.dart';
import 'package:patel_brothers/Controller/ItemController/ItemDetailController.dart';


class OfferItemPage extends StatefulWidget {
  const OfferItemPage({Key? key}) : super(key: key);

  @override
  State<OfferItemPage> createState() => _OfferItemPageState();
}

class _OfferItemPageState extends State<OfferItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerHeader(child: Text('Drawer'),),
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Vaseline \nIntensive Care Revitalizing Green Tea Body Lotion 400 ml',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 10),
                ItemImage(TOPOFF1),
                PriceDetails(),
                SizedBox(height: 10),
                StockDetails(),
                OffersDetails(),
                ItemDesc(),
                ItemDetails(),
                ItemInfo(),
                BuildTopOffers(),
                ItemRating()
              ],
            ),
          ),
        ),
    );
  }
}
