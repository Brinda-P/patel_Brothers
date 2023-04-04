import 'package:flutter/material.dart';
import 'package:patel_brothers/Config/Utils/color.dart';
import 'package:patel_brothers/Config/Utils/image.dart';
import 'package:patel_brothers/Config/Helper/SizeConfig.dart';
import 'package:get/get.dart';

Row CartTotal() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Cart (3 items)'),
      Text('₹ 2,207.00',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
    ],
  );
}

ListView cartitem(String PageName){

  List<CartItemDetail> ItemDetailList = [
    CartItemDetail(ItemName: 'Fastdry Active Training Jacket', Price: '₹ 779.00', MRP: '₹ 999.00', SavePrice: '₹ 280.00', Size: 'S', Color: 'Light Blue', SoldBy: 'N M AGGARWAL AND COMPANY Pnt. Ltd.', Image: MENJACKET, PageName: '/apparelpage' ,DeliveryFromDate: '10th Dec.', DeliveryToDate: '12th Dec'),
    CartItemDetail(ItemName: 'The Fab Factory Women Light Blue Solid Crepe Georgette Pack of 2 Kurta Set', Price: '₹ 779.00', MRP: '₹ 2749.00', SavePrice: '₹ 1970.00', Size: 'S', Color: 'Light Blue', SoldBy: '', Image: WOMENKURTA, PageName: '/offeritem',DeliveryFromDate: '10th Dec.', DeliveryToDate: '12th Dec'),
    CartItemDetail(ItemName: 'Dove Nutritive Solutions Intense Repair Shampoo 650 ml', Price: '₹ 649.00', MRP: '₹ 999.00', SavePrice: '₹ 280.00', Size: '',Color: '' , SoldBy: "Patel Brother's", Image: DOVESHAMPOO, PageName: '/offeritem',DeliveryFromDate: '10th Dec.', DeliveryToDate: '12th Dec'),
  ];


  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
      itemCount: ItemDetailList.length,
    shrinkWrap: true,
      itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
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
                Image.asset(ItemDetailList[index].Image,height: 83,width: 63,),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(ItemDetailList[index].PageName);
                    },
                    child: Container(
                      width: Get.width/1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ItemDetailList[index].ItemName, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                          Row(
                            children: [
                              Text(ItemDetailList[index].Price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(width: 10),
                              Text(ItemDetailList[index].MRP, style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                  decoration: (TextDecoration.lineThrough)
                              ),),
                              SizedBox(width: 10),
                              Text(ItemDetailList[index].SavePrice, style: TextStyle(fontSize: 8,color: AppColors.THEME_COLOR),)
                            ],
                          ),
                          if(ItemDetailList[index].Size != '' && ItemDetailList[index].Color != '')Text('Size : ${ItemDetailList[index].Size} / Colour : ${ItemDetailList[index].Color}', style: TextStyle(fontSize: 10),),
                          if(ItemDetailList[index].SoldBy != '')Text('Sold by ${ItemDetailList[index].SoldBy}', style: TextStyle(fontSize: 10)),
                          SizedBox(height: 5),
                          if(PageName.toUpperCase() == 'CARTPAGE')AddRemoveFromCart(),
                          if(PageName.toUpperCase() == 'DELIVERYPAGE')DeliveryDate(ItemDetailList[index].DeliveryFromDate!, ItemDetailList[index].DeliveryToDate!)

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
      },);
}

Row AddRemoveFromCart(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('SAVE FOR LATER', style: TextStyle(fontSize: 10, color: Colors.grey),),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(borderRadius : BorderRadius.circular(12),color:AppColors.THEME_COLOR),
              child: Icon(Icons.remove,color: Colors.white,)),
          Text('01'),
          Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(borderRadius : BorderRadius.circular(12),color:AppColors.THEME_COLOR),
              child: Icon(Icons.add,color: Colors.white,)),
        ],
      )
    ],
  );
}

Padding DeliveryDate(String FromDate, String ToDate){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: Text(
        'Deliver Between $FromDate to $ToDate' , style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400)
    ),
  );
}


Container CouponDetail() {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Apply Coupon',
                style: TextStyle(color: AppColors.THEME_COLOR, fontWeight: FontWeight.w600)),
            Text('VIEW ALL',
                style: TextStyle(color: Colors.red[900], fontSize: 10, fontWeight: FontWeight.w600)),
          ],
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.percent),
            hintText: 'Enter Coupon Code',
            suffix: Text('Apply', style: TextStyle(color: Colors.grey),),
          ),
        ),
        SizedBox(height: 5),
        Text('Invalid Coupon Code',
            style: TextStyle(fontSize: 8, color: Colors.red, fontWeight: FontWeight.w500)),

      ],
    ),
  );
}

Container PaymentDetail() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[200],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Details',
            style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('MRP Total',
                style: TextStyle(color: Colors.grey)),
            Text('₹ 2,207'),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Product Discount',
                style: TextStyle(color: Colors.grey)),
            Text('- ₹ 207'),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Total',
                style: TextStyle(fontWeight: FontWeight.w700)),
            Text('₹ 2,000',
                style: TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('You Save ₹ 207',
                style: TextStyle(color: AppColors.THEME_COLOR)),
          ],
        )
      ],
    ),
  );
}

Container PlaceOrderMakePayment(String Type){
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payable Amount'),
            Text('₹ 2,207')
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: AppColors.THEME_COLOR,
            borderRadius: BorderRadius.circular(30),
          ),
          child:
          TextButton(
            onPressed: () {
              if(Type.toUpperCase() == 'PLACEORDER') Get.toNamed('/deliverypage');
            },
            child:
                Text(Type.toUpperCase() == 'PLACEORDER' ? 'Place Order' : 'Make Payment', style: TextStyle(color: Colors.white),)
          )

        )
      ],
    ),
  );
}

class CartItemDetail{
  late String ItemName;
  late String Price;
  late String MRP;
  late String SavePrice;
  late String Size;
  late String Color;
  late String SoldBy;
  late String Image;
  late String PageName;
  String? DeliveryFromDate;
  String? DeliveryToDate;

  CartItemDetail({required this.ItemName, required this.Price, required this.MRP, required this.SavePrice, required this.Size, required this.Color, required this.SoldBy, required this.Image,required this.PageName, this.DeliveryFromDate, this.DeliveryToDate});
}