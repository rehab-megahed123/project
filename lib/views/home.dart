import 'package:flutter/material.dart';
import 'package:flutter_navigation/color.dart';
import 'package:flutter_navigation/widgets/custom_card.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/views/DetailsScreen.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/showy.jpg"), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "CutiePie store",
              style: TextStyle(
                  fontFamily: 'Cookie',
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Row(
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
            SizedBox(height: 16),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Popular:",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                )),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
