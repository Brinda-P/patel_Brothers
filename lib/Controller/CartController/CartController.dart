import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Config/Helper/SizeConfig.dart';

Container cartitem(){
  return Container(
    height: 330.h,
    child: Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
              return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black12,
                            width: 1,
                            style: BorderStyle.solid
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(MENTSHIRT,height: 83,width: 63,),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Fastdry Active Training Jacket', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                                Row(
                                  children: [
                                    Text('₹ 779.00', style: TextStyle(fontSize: 16),),
                                    Text('M.R.P. ₹ 999.00 ', style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 8,
                                        decoration: (TextDecoration.lineThrough)
                                    ),),
                                    Text('You Save ₹ 260.00', style: TextStyle(fontSize: 8,color: AppColors.THEME_COLOR),)
                                  ],
                                ),
                                Text('Size : S / Colour : Light Blue', style: TextStyle(fontSize: 10),),
                                Text('Sold by N M AGGARWAL AND COMPANY Pvt. Ltd.', style: TextStyle(fontSize: 10)),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('SAVE FOR LATER', style: TextStyle(fontSize: 10, color: Colors.grey),),
                                    IconButton(onPressed: () {

                                    }, icon: Icon(Icons.remove)),
                                    Text('01'),
                                    IconButton(onPressed: () {

                                    }, icon: Icon(Icons.add))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
              );
          },),
    ),
  );
}