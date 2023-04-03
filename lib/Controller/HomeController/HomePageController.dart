import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:patel_brothers/Config/Helper/SizeConfig.dart';
import '../../Config/Utils/image.dart';
import 'package:get/get.dart';


Text _Heading(String Heading){
  return Text(Heading,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16
      ));
}

Container BuildProductList() {

  List<ProductDetail> ProductList = [
    ProductDetail(PImage: COOKIES, PName: 'Cookies', RGColor1: Colors.white, RGColor2: Colors.blue[200]!),
    ProductDetail(PImage: FRUITS, PName: 'Fruits', RGColor1: Colors.white, RGColor2: Colors.orange[200]!),
    ProductDetail(PImage: VEGITABLES, PName: 'Vegetables', RGColor1: Colors.white, RGColor2: Colors.red[200]!),
    ProductDetail(PImage: EXOTICFRUITS, PName: 'Exotic Fruits', RGColor1: Colors.white, RGColor2: Colors.yellow[200]!),
    ProductDetail(PImage: PERSONALCARE, PName: 'Personal Care', RGColor1: Colors.white, RGColor2: Colors.cyanAccent[200]!),
  ];

  return Container(
    height: 100.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: ProductList.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                //clipBehavior: Clip.none,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(ProductList[index].PImage),
                ),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //color: Colors.blue,
                  gradient: RadialGradient(colors: [ProductList[index].RGColor1, ProductList[index].RGColor2] ),

                ),
              ),
            ),
            Text(ProductList[index].PName,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600
              ),)
          ],
        );
      },
    ),
  );
}

Container BuildSpecialForYou(){

  List<SpecialForYouDetail> SpecialList = [
    SpecialForYouDetail(Name: 'Dry Fruits', Image: DRYFRUITS, Discount: '30'),
    SpecialForYouDetail(Name: 'Beauty Products', Image: BEAUTYPRODUCTS, Discount: '20'),
    SpecialForYouDetail(Name: 'Kitchen Aplliances', Image: KITCHENAPPLIANCES, Discount: '20'),
  ];
  return Container(
    height: 150.h,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Heading('Special For You'),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SpecialList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      badges.Badge(
                        badgeContent: Text('${SpecialList[index].Discount}% \n off' ,
                          style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w700),),
                        position: badges.BadgePosition.topStart(start: -5),
                        badgeStyle: badges.BadgeStyle(
                            padding: EdgeInsets.all(8),
                            shape : badges.BadgeShape.instagram),
                        child: Image.asset(SpecialList[index].Image,
                          height: 85,
                          width: 138,
                          fit: BoxFit.fill,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Text(SpecialList[index].Name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },),
          )
        ],
      ),
    ),
  );
}

Padding BuildShoesImage(){
  return Padding(
      padding: EdgeInsets.only(top: 10,bottom: 10),
      child:  Image.asset(SHOES)
  );
}

Container BuildTrendingBrands(){

  List<TrendingBrandsDetail> TrendingList = [
    TrendingBrandsDetail(Image: NIKE, Logo: Nike_logo, Title: 'UP TO 60% OFF'),
    TrendingBrandsDetail(Image: MILTON, Logo: Milton_logo, Title: 'STARTING AT 300'),
    TrendingBrandsDetail(Image: WOW, Logo: Wow_logo, Title: 'UP TO 20% OFF'),
  ];
  return Container(
    height: 170.h,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Heading('Trending Brands'),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TrendingList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(TrendingList[index].Image,
                        height: 85,
                        width: 138,
                        fit: BoxFit.fill,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(TrendingList[index].Logo,
                          height: 21,width: 40,),
                      ),
                      Text(TrendingList[index].Title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10
                        ),
                      )
                    ],
                  ),
                );
              },),
          )
        ],
      ),
    ),
  );
}

Container BuildSaleSlider(){
  return Container(
    height: 130.h,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(SALE1),
          SizedBox(width: 10),
          Image.asset(SALE2),
        ],
      ),
    ),
  );
}

Container BuildTopOffers(){
  return Container(
    height: 305.h,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Heading('Top Offers'),
              Text('View All',
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: badges.Badge(
                    badgeContent: Text('50% \n off', style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w700),),
                    position: badges.BadgePosition.topStart(),
                    badgeStyle: badges.BadgeStyle(
                        padding: EdgeInsets.all(10),
                        shape : badges.BadgeShape.instagram),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/offeritem');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black12,
                              width: 1,
                              style: BorderStyle.solid
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(TOPOFF1,
                              fit: BoxFit.fill,
                              height: 164,
                              width: 164,
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('₹ 259.00',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text('M.R.P. ₹ 519.00',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                        decoration: (TextDecoration.lineThrough)

                                    ),),
                                  SizedBox(height: 3),
                                  Text('Save ₹ 260.00',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green
                                    ),),
                                  SizedBox(height: 3),
                                  Text('Vaseline Intensive Care \n Revitalizing Green Tea Body Loation',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2.1,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.green[900],
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                              ),
                              child: Row(
                                mainAxisAlignment : MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_cart,
                                    color: Colors.white,
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
                        ),
                      ),
                    ),
                  ),
                );
                },),
          )
        ],
      ),
    ),
  );
}

Container BuildCategory() {

  List<CategoryDetail> CategoryList = [
    CategoryDetail(Image: RICE, Name: 'Rice', Detail: 'UP TO 60% OFF', RGColor1: Colors.white, RGColor2: Colors.lightGreenAccent[100]),
    CategoryDetail(Image: OIL, Name: 'Oil', Detail: 'UP TO 30% OFF', RGColor1: Colors.white, RGColor2: Colors.orange[100]),
    CategoryDetail(Image: AUDIOGEARS, Name: 'Audio gears', Detail: 'UP TO 90% OFF', RGColor1: Colors.white, RGColor2: Colors.blue[100]),
    CategoryDetail(Image: KITCHENWARE, Name: 'Kitchenware', Detail: 'UP TO 80% OFF', RGColor1: Colors.white, RGColor2: Colors.yellow[100]),
    CategoryDetail(Image: OFFICESTATUINERY, Name: 'Office Stationery', Detail: 'STARTING 99', RGColor1: Colors.white, RGColor2: Colors.lightBlue[100]),
    CategoryDetail(Image: FOOTWARE, Name: 'Footwear', Detail: 'Starting 199', RGColor1: Colors.white, RGColor2: Colors.red[100]),
    CategoryDetail(Image: APPAREL, Name: 'Apparel', Detail: 'starting 299', RGColor1: Colors.white, RGColor2: Colors.lightGreenAccent[100]),
    CategoryDetail(Image: KITCHEN2, Name: 'Kitchen Appliances', Detail: 'UP TO 75% OFF', RGColor1: Colors.white, RGColor2: Colors.deepPurpleAccent[100]),
    CategoryDetail(Image: SKINCARE, Name: 'Skin Care', Detail: 'Starting 199', RGColor1: Colors.white, RGColor2: Colors.cyanAccent[100]),

  ];

  return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: _Heading('Shop From Top Category'),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisExtent: 160),
            itemCount: CategoryList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/apparelpage');
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(CategoryList[index].Image),
                        ),
                        height: 108,
                        width: 108,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            gradient: RadialGradient(colors: [CategoryList[index].RGColor1, CategoryList[index].RGColor2] ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  Text(CategoryList[index].Name.toUpperCase(),
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700
                    ),),
                  SizedBox(height: 5),
                  Text(CategoryList[index].Detail.toUpperCase(),
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700
                    ),)
                ],
              );
            },),
        ],
      )
  );
}

Container BuildSeasonVegetables(){

  List<SeasonVegDetail> VegList = [
    SeasonVegDetail(Name: 'Cauliflower (Kobi)', Price: '899.00', Image: CAULIFLOWER),
    SeasonVegDetail(Name: 'Tomato - 1kg', Price: '34.00', Image: TOMATO),
    SeasonVegDetail(Name: 'Carrot (Gajar) - 1kg', Price: '899.00', Image: TOMATO),
  ];

  return Container(
    height: 210.h,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Heading('Season Vegetable'),
              Text('View All',
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: VegList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.black12,
                          width: 1,
                          style: BorderStyle.solid
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(VegList[index].Image,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(VegList[index].Name,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('M.R.P. :',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  SizedBox(width: 5),
                                  Text(VegList[index].Price,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },),
          )
        ],
      ),
    ),
  );
}


class ProductDetail{
  late String PImage;
  late String PName;
  final RGColor1;
  final RGColor2;

  ProductDetail({required this.PImage,required this.PName,required this.RGColor1,required this.RGColor2});
}

class SpecialForYouDetail{
  late String Name;
  late String Discount;
  late String Image;

  SpecialForYouDetail({required this.Name, required this.Image, required this.Discount});
}

class TrendingBrandsDetail{
  late String Logo;
  late String Title;
  late String Image;

  TrendingBrandsDetail({required this.Image, required this.Logo, required this.Title});
}

class CategoryDetail{
  late String Image;
  late String Name;
  late String Detail;
  final RGColor1;
  final RGColor2;

  CategoryDetail({required this.Image,required this.Name, required this.Detail, required this.RGColor1,required this.RGColor2});
}

class SeasonVegDetail{
  late String Name;
  late String Price;
  late String Image;

  SeasonVegDetail({required this.Name, required this.Image, required this.Price});
}

