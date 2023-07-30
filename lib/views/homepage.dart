import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/views/DetailsScreen.dart';

class HomeMakeup extends StatefulWidget {
  const HomeMakeup({Key? key}) : super(key: key);

  @override
  State<HomeMakeup> createState() => _HomeMakeupState();
}

class _HomeMakeupState extends State<HomeMakeup> {
  final List<String> names = <String>['s', 's', 's', 's', 's'];

  int _currentIndex = 0;
  void OnTapTapped(
    int index,
  ) {
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 22),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(product: items[index])));
              },
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                        top: -3,
                        bottom: -9,
                        right: 1,
                        left: 1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imagepath)))
                  ],
                ),
                footer: GridTileBar(
                  backgroundColor: Color(0x42ffffff),
                  trailing: IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart)),
                  leading: Text(items[index].price,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Cookie')),
                  title: Text("          "),
                ),
              ));
        },
      ),
    );
  }
}
