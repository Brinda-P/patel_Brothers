import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/HomeController/HomePageController.dart';
import 'package:patel_brothers/Controller/ItemController/ItemDetailController.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHeader(child: Text('Drawer'),),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildProductList(),
            SizedBox(height: 20),
            //ImageSlider(SLIDERIMAGE),
            ImageSlideshow(
              height: 128,
              indicatorColor: Colors.red,
              children: [
                Image.asset(SLIDERIMAGE, fit: BoxFit.fill),
                Image.asset(SLIDERIMAGE, fit: BoxFit.fill),
                Image.asset(SLIDERIMAGE, fit: BoxFit.fill),
                Image.asset(SLIDERIMAGE, fit: BoxFit.fill),
              ]),
            SizedBox(height: 10),
            BuildSpecialForYou(),
            BuildShoesImage(),
            BuildTrendingBrands(),
            BuildSaleSlider(),
            BuildTopOffers(),
            BuildCategory(),
            BuildSeasonVegetables()
          ],
        ),
      ),
    );
  }
}




