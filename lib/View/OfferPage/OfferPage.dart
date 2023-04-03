import 'package:flutter/material.dart';
import 'package:patel_brothers/Controller/Appbar.dart';

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
            
          ],
        ),
      ),
    );
  }
}
