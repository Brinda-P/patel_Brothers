import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/ItemController/ItemDetailController.dart';

class ApparelPage extends StatefulWidget {
  const ApparelPage({Key? key}) : super(key: key);

  @override
  State<ApparelPage> createState() => _ApparelPageState();
}

class _ApparelPageState extends State<ApparelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHeader(child: Text('Drawer'),),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('RIGO \nRigo Men Black Round Neck Terry Track Suit',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ItemImage(MENTSHIRT),
              PriceDetails(),
              SizedBox(height: 10),
              OtherStockDetails(),
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
