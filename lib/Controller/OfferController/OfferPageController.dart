import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Helper/SizeConfig.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

Container OfferCategory(){

  List<PCCategory> PCList = [
    PCCategory(Name: 'Hair Care', Image: HAIRCARE),
    PCCategory(Name: 'Bath & Hand Wash', Image: HANDWASH),
    PCCategory(Name: 'Bath & Hand Wash', Image: HAIRCARE),
  ];

  return Container(
    height: 50.h,
    padding: EdgeInsets.only(left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Personal \n Care', style: TextStyle(fontSize: 10),),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey[300],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: PCList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(PCList[index].Image,width: 44,height: 32,),
                      SizedBox(width: 5),
                      Text(PCList[index].Name, style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),)
                    ],
                  ),
                );
              },),
          ),
        )
      ],
    ),
  );
}


Container OfferItems() {
  
  List<OfferItemDetail> ItemList = [
    OfferItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 259.00', MRP: '₹ 519.00', SavePrice: '₹ 260.00', Image: DOVE1),
    OfferItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 652.00', MRP: '₹ 725.00', SavePrice: '₹ 73.00', Image: DOVE2),
    OfferItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 652.00', MRP: '₹ 725.00', SavePrice: '₹ 73.00', Image: DOVE3),
    OfferItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 66.00', MRP: '₹ 72.00', SavePrice: '₹ 6.00', Image: DOVE4),
    OfferItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 652.00', MRP: '₹ 725.00', SavePrice: '₹ 73.00', Image: DOVE5)
  ];
  
  
  return Container(
    height: 600.h,
    padding: EdgeInsets.all(5),
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: ItemList.length,
      itemBuilder: (context, index) {
        return badges.Badge(
          badgeContent: Text('50% \n off' ,
            style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w700),),
          position: badges.BadgePosition.topStart(start: -2,top: 1),
          badgeStyle: badges.BadgeStyle(
              padding: EdgeInsets.all(8),
              shape : badges.BadgeShape.instagram),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black12, width: 1, style: BorderStyle.solid),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ItemList[index].Image,
                  height: 124,
                  width: 124,
                ),
                Container(
                  width: Get.width / 1.7,
                  padding: EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ItemList[index].ItemName,
                        style:
                            TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            ItemList[index].Price,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'M.R.P. ${ItemList[index].MRP}',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
                                decoration: (TextDecoration.lineThrough)),
                          ),
                        ],
                      ),
                      Text(
                        'Save Price : ${ItemList[index].SavePrice}',
                        style: TextStyle(
                            fontSize: 8, color: AppColors.THEME_COLOR),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                color: AppColors.THEME_COLOR,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text('Add to Cart',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
      ),
        );
    },),
  );
}

class PCCategory{
  String Name;
  String Image;

  PCCategory({required this.Name, required this.Image});
}

class OfferItemDetail{
  late String ItemName;
  late String Price;
  late String MRP;
  late String SavePrice;
  late String Image;
  
  OfferItemDetail({required this.ItemName, required this.Price, required this.MRP, required this.SavePrice, required this.Image});
}