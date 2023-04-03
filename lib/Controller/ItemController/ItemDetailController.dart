import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Helper/SizeConfig.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import '../../Config/Utils/image.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

Container ItemImage(String image){
  return Container(
    padding: EdgeInsets.all(10),
    child: badges.Badge(
      badgeContent: Text('50% \n off', style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w700),),
      position: badges.BadgePosition.topStart(),
      badgeStyle: badges.BadgeStyle(
          padding: EdgeInsets.all(10),
          shape : badges.BadgeShape.instagram),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 300.w,
          //autoPlay: true,
          //autoPlayInterval: Duration(seconds: 3),
        ),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  //width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(image,
                    fit: BoxFit.fill,)
              );
            },
          );
        }).toList(),
      ),
    ),
  );
}

Container PriceDetails() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Save ₹ 260.00',
        style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w400),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('₹ 259.00',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            Icon(Icons.favorite,color: AppColors.THEME_COLOR,)
          ],
        ),
        Row(
          children: [
            Text('M.R.P. 519.00',
              style: TextStyle(
                  color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400,
                  decoration: (TextDecoration.lineThrough)
              ),
            ),
            SizedBox(width: 5),
            Text('(Inclusive of all taxes)',
              style: TextStyle(
                color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
        Row(
          children: [
            Text('Inaugural Offer' ),
            SizedBox(width: 5),
            Text('Free Shipping',
              style: TextStyle(color: AppColors.THEME_COLOR, fontWeight: FontWeight.w400, fontSize: 12),
            ),
          ],
        )
      ],
    ),
  );
}

Container StockDetails() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('In Stock',
          style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w600)),
        Row(
          children: [
            Text('Sold by',
              style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400)),
            SizedBox(width: 5),
            Text('Patel Brother`s',
                style: TextStyle(color: Colors.red[900])),
          ],
        ),
        Text('Delivery',
            style: TextStyle(fontWeight: FontWeight.w600)),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_on),
            hintText: '364001',
            suffix: Text('CHECK', style: TextStyle(color: Colors.red[900]),),
          ),
        ),
        SizedBox(height: 5),
        Text('Check for estimated delivery date',
            style: TextStyle(fontSize: 10, color: Colors.grey)),

      ],
    ),
  );
}

Container OffersDetails() {

  List<OfferDetail> OfferList = [
    OfferDetail(Title: 'BUY MORE SAVE MORE', Detail: 'Get Sugar at ₹ 9 only on Grocery Shopping of \nMin. ₹ 1499.', OtherOffer: 'View 1 Offer'),
    OfferDetail(Title: 'ADDITIONAL OFFER', Detail: 'Get Sugar at ₹ 9 only on Grocery Shopping of \nMin. ₹ 1499.', OtherOffer: 'View 2 Offer'),
    OfferDetail(Title: 'BANK OFFER', Detail: 'Get Sugar at ₹ 9 only on Grocery Shopping of \nMin. ₹ 1499.', OtherOffer: 'View 10 Offer'),
  ];


  return Container(
    height: 180,
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Available Offers',
                  style: TextStyle(color: AppColors.THEME_COLOR),),
                SizedBox(width: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: Text('5',
                    style: TextStyle(color: AppColors.THEME_COLOR)),
                ),
              ],
            ),
            Text('SEE MORE', style: TextStyle(color: Colors.red,)),
          ],
        ),
        Expanded(
            child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: OfferList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 5,bottom: 5,top: 15,right: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Text(OfferList[index].Title,
                          style: TextStyle(color: AppColors.THEME_COLOR, fontSize: 10,fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(height: 5),
                    Text(OfferList[index].Detail,
                      style: TextStyle(fontSize:12),),
                    SizedBox(height: 5),
                    Text(OfferList[index].OtherOffer,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10  )),

                  ],
                ),
              );
          },)
        )
      ],
    ),
  );
}

Container ItemDesc() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description',
          style: TextStyle(fontWeight: FontWeight.w600),),
        SizedBox(height: 5),
        Text('Vaseline Intensive Care Revitalizing Green Tea \nBody Lotion 400 ml',
            style: TextStyle(fontWeight: FontWeight.w700)),
        SizedBox(height: 10),
        Text("Looking after your skin's health is of utmost importance because extra efforts always shows, even on your skin. That's why you should pay extra attention to what you choose for your skin. Presenting New Vaseline Revitalizing Green Tea Body Lotion, specially formulated with 100% Pure Green...",
            style: TextStyle(fontSize: 10, color: Colors.grey)),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('KNOW MORE',style: TextStyle(color: Colors.red,fontSize: 10)),
          ],
        )
      ],
    ),
  );
}

Container ItemDetails() {
  return Container(
    width: Get.width,
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Features & Details',
          style: TextStyle(fontWeight: FontWeight.w600),),
        SizedBox(height: 5),
        Text('Contains 100% pure Green Tea extracts.',
            style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(height: 5),
        Text('Clinically proven to moisturize your skin',
            style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(height: 5),
        Text('Refreshes your skin',
            style: TextStyle(fontWeight: FontWeight.w500)),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('KNOW MORE',style: TextStyle(color: Colors.red,fontSize: 10)),
          ],
        )
      ],
    ),
  );
}

Container ItemInfo() {
  return Container(
    width: Get.width,
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Product Information',
          style: TextStyle(fontWeight: FontWeight.w700),),
        SizedBox(height: 10),
        Text('General Information',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10)),
        SizedBox(height: 10),
        Text('Brand',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10)),
        SizedBox(height: 5),
        Text('Manufacturer',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10)),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('KNOW MORE',style: TextStyle(color: Colors.red,fontSize: 10)),
          ],
        )
      ],
    ),
  );
}

Container ItemRating() {
  return Container(
    width: Get.width,
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Product Rating',
          style: TextStyle(fontWeight: FontWeight.w700),),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Rate Product'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.star_rounded, color: Colors.grey),
                Icon(Icons.star_rounded, color: Colors.grey),
                Icon(Icons.star_rounded, color: Colors.grey),
                Icon(Icons.star_rounded, color: Colors.grey),
                Icon(Icons.star_rounded, color: Colors.grey),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Container(
            width: Get.width,
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Text('WRITE REVIEW'),
        )
      ],
    ),
  );
}

Container OtherStockDetails() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Colour : Black',
            style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.circle, color: Colors.black ),
            Icon(Icons.circle, color: Colors.redAccent ),
            Icon(Icons.circle, color: Colors.orangeAccent )
          ],
        ),
        SizedBox(height: 10),
        Text('Size  :  XL',
            style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(borderRadius : BorderRadius.circular(10),color: Colors.grey[400]),
                child: Text('M')
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(borderRadius : BorderRadius.circular(10),color: Colors.grey[400]),
                child: Text('L')
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(borderRadius : BorderRadius.circular(10),color:AppColors.THEME_COLOR),
                child: Text('XL', style: TextStyle(color: Colors.white),)
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(borderRadius : BorderRadius.circular(10),color: Colors.grey[400]),
                child: Text('XXL')
            ),
          ],
        ),
        SizedBox(height: 10),
        Text('In Stock',
            style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w600)),
        Row(
          children: [
            Text('Sold by',
                style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400)),
            SizedBox(width: 5),
            Text('Patel Brother`s',
                style: TextStyle(color: Colors.red[900])),
          ],
        ),
        Text('Delivery',
            style: TextStyle(fontWeight: FontWeight.w600)),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_on),
            hintText: '364001',
            suffix: Text('CHECK', style: TextStyle(color: Colors.red[900]),),
          ),
        ),
        SizedBox(height: 5),
        Text('Check for estimated delivery date',
            style: TextStyle(fontSize: 10, color: Colors.grey)),

      ],
    ),
  );
}


class OfferDetail{
  late String Title;
  late String Detail;
  late String OtherOffer;

  OfferDetail({required this.Title,required this.Detail,required this.OtherOffer});
}