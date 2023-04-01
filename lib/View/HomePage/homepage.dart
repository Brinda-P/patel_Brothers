import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/HomeController/HomePageController.dart';


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
            CarouselSlider(
              options: CarouselOptions(
                height: 120.0,
                //autoPlay: true,
                //autoPlayInterval: Duration(seconds: 3),
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(SLIDERIMAGE,
                        fit: BoxFit.fill,)
                    );
                  },
                );
              }).toList(),
            ),
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




