import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/color.dart';

class Details extends StatefulWidget {
  Categories product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  //const Details({Key? key}) : super(key: key);
  bool showMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(widget.product.imagepath),
          SizedBox(height: 11),
          Text(
            "\$  ${widget.product.price}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              padding: EdgeInsets.all(4),
              child: Text("New", style: TextStyle(fontSize: 15)),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 26,
                  color: AppColors.yellowColor,
                ),
                Icon(
                  Icons.star,
                  size: 26,
                  color: AppColors.yellowColor,
                ),
                Icon(
                  Icons.star,
                  size: 26,
                  color: AppColors.yellowColor,
                ),
                Icon(
                  Icons.star,
                  size: 26,
                  color: AppColors.yellowColor,
                ),
                Icon(
                  Icons.star,
                  size: 26,
                  color: AppColors.yellowColor,
                ),
                SizedBox(width: 40),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: AppColors.mColor1,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "CutiePie store",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          SizedBox(height: 16),
          SizedBox(
              width: double.infinity,
              child: Text(
                "Details:",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              )),
          SizedBox(height: 16),
          Text(
            "Radiant Your Skin】 Shimmering but effortless creates an inside-out gloss highlight effect that creates a natural glow.【Natural Matte Finish】 We provide you with a charming matte natural blush tint, you can choose to match different makeup, all can show a lively side.【Super Silky Cream】 Soft and smooth texture, dot the cheeks with your fingers. You can use one coat, or even multiple coats, to add a nice touch to your look with one or more covers.",
            style: TextStyle(fontSize: 18),
            maxLines: showMore ? 4 : null,
            overflow: TextOverflow.clip,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: Text(
                showMore ? "show more" : "show less",
                style: TextStyle(fontSize: 18),
              )),
        ],
      ),
    ));
  }
}
