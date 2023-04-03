import 'package:flutter/material.dart';
import 'package:patel_brothers/Controller/Appbar.dart';
import 'package:patel_brothers/Controller/DeliveryContoller/DeliveryPageController.dart';

class deliverypage extends StatefulWidget {
  const deliverypage({Key? key}) : super(key: key);

  @override
  State<deliverypage> createState() => _deliverypageState();
}

class _deliverypageState extends State<deliverypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : Text('PATEL BROTHERS')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddressDetail()

            ],
          ),
        ),
      ),
    );
  }
}
