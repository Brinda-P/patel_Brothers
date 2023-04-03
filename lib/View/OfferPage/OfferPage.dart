import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/OfferController/OfferPageController.dart';

class offerpage extends StatefulWidget {
  const offerpage({Key? key}) : super(key: key);

  @override
  State<offerpage> createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OfferCategory(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.grey[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('250 Products Available', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: Row(
                        children: [
                          Icon(Icons.sort,size: 20),
                          Text('sort | Filter', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),),
                          Icon(Icons.filter_list_alt,size: 20)
                        ],
                      ),
                    ),

                ],
              ),
            ),
            OfferItems()
          ],
        ),
      ),
    );
  }
}
