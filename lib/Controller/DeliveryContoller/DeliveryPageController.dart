import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';

Container AddressDetail(){
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select Delivery Address', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.radio_button_checked, color: AppColors.THEME_COLOR),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('YASH GOSWAMI',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                  SizedBox(height: 10),
                  Text('Plote No. 115, Sardar Patel Society,\nVictoria park road, Jewel’s Cricle.\nBhavnagar - 364001, Gujarat.\n+91 - 9876543210'),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red[600]
                    ),
                    child: Text('Default Address', style: TextStyle(color: Colors.white),),
                  )

                ],
              )
            ],
          ),
        ),

      ],
    ),
  );
}