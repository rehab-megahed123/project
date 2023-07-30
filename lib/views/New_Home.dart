
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/custom_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/color.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
    );
  }

  Widget HomeView() => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.textColor),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.textColor2,
                    )),
              ),
            ),
            SizedBox(height: 16),
            bannersView(),
            SizedBox(height: 25),
            Text(
              "CutiePie store",
              style: TextStyle(
                  fontFamily: 'Cookie',
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 45,
                    color: Colors.transparent,
                    child: ImageIcon(
                      AssetImage("assets/beauty-products.png"),
                      size: 10,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    height: 35,
                    width: 45,
                    color: Colors.transparent,
                    child: ImageIcon(
                      AssetImage("assets/lipstick.png"),
                      size: 10,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    height: 35,
                    width: 45,
                    child: ImageIcon(
                      AssetImage("assets/paint-brush.png"),
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    height: 35,
                    width: 45,
                    child: ImageIcon(
                      AssetImage("assets/box.png"),
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 55,
                    width: 50,
                    child: ImageIcon(
                      AssetImage("assets/Mascara.png"),
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 55,
                    width: 50,
                    child: ImageIcon(
                      AssetImage("assets/mirror.png"),
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 100,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                    images.length,
                    (index) => GestureDetector(
                          child: CustomCard(
                              image: items[index].imagepath,
                              type: items[index].price),
                          // productsView(index,context),
                          onTap: () {},
                        )),
              ),
            )
          ],
        ),
      );
  List<String> images = [
    'assets/blush.jpg',
    'assets/Concealer.jpg',
    'assets/Foundation.jpg',
    'assets/Eyeliner.jpg',
  ];
  Widget bannersView() {
    List<Widget> bannersList = [];

    images.forEach((element) {
      bannersList.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
            height: 300,
            width: double.infinity,
            child: ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              borderRadius: BorderRadius.circular(25),
            )),
      ));
    });
    return Container(
      width: double.infinity,
      child: CarouselSlider(
          items: bannersList,
          options: CarouselOptions(
            autoPlay: true,
          )),
    );
  }
}
