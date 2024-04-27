import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            color: Colors.grey[180],
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 50.0),
                RoundedCategoryIcon(icon: Icons.woman, size: 40.0),
                SizedBox(width: 30.0),
                RoundedCategoryIcon(icon: Icons.man, size: 40.0),
                SizedBox(width: 30.0),
                RoundedCategoryIcon(icon: Icons.cases, size: 40.0),
                SizedBox(width: 30.0),
                RoundedCategoryIcon(icon: Icons.computer, size: 40.0),
                SizedBox(width: 30.0),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: List.generate(
                8,
                (index) => ProductItem(
                  image:
                      "https://cdn.dsmcdn.com/mnresize/1200/1800/ty456/product/media/images/20220618/14/127367013/502692412/1/1_org_zoom.jpg",
                  tutar: "100 TL",
                  name: "Ürün ${index + 1}",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String tutar;
  final String name;

  const ProductItem({
    Key? key,
    required this.image,
    required this.tutar,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              width: 200,
            ),
            Icon(Icons.shopping_bag, size: 40.0),
            SizedBox(height: 10.0),
            Text(name),
            Text(tutar),
          ],
        ),
      ),
    );
  }
}

class RoundedCategoryIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const RoundedCategoryIcon({
    Key? key,
    required this.icon,
    this.size = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 240, 113, 10),
      ),
      child: Icon(
        icon,
        size: size,
        color: Colors.white70,
      ),
    );
  }
}
