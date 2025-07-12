// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_app/custom/custom_column.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List proudcts = [
    {
      "image": "images/mac.jpg",
      "title": "Macbook",
      "subtitle": "Subtitle",
      "price": "350",
    },
    {
      "image": "images/Tv.jpg",
      "title": "Tv",
      "subtitle": "Subtitle",
      "price": "450",
    },
    {
      "image": "images/mobile.jpg",
      "title": "Mobile",
      "subtitle": "Subtitle",
      "price": "250",
    },
    {
      "image": "images/head.jpg",
      "title": "Headphone",
      "subtitle": "Subtitle",
      "price": "250",
    },
    {
      "image": "images/car.jpg",
      "title": "Car",
      "subtitle": "Subtitle",
      "price": "5200",
    },
    {
      "image": "images/watch.jpg",
      "title": "Clasic Watch",
      "subtitle": "Subtitle",
      "price": "350",
    },
    {
      "image": "images/airpods.jpg",
      "title": "Apple Airpods",
      "subtitle": "Subtitle",
      "price": "350",
    },
    {
      "image": "images/apple.jpg",
      "title": "Apple Watch",
      "subtitle": "Subtitle",
      "price": "350",
    },
    {
      "image": "images/perfum.jpg",
      "title": "Perfum",
      "subtitle": "Subtitle",
      "price": "350",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "*",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      prefixIcon: Icon(Icons.search, size: 30),
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, size: 40),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              'Category',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // category
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomeColumn(title: 'Laptop', icon: Icons.laptop),
                  CustomeColumn(title: 'Mobile', icon: Icons.mobile_friendly),

                  CustomeColumn(title: 'Gift', icon: Icons.card_giftcard),
                  CustomeColumn(title: 'Electric', icon: Icons.tv),
                  CustomeColumn(
                    title: 'Shoping',
                    icon: CupertinoIcons.shopping_cart,
                  ),
                  CustomeColumn(title: 'Fitnes', icon: Icons.fitness_center),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Best Selling',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 230,
              ),
              itemCount: proudcts.length,
              itemBuilder: (context, index) => CustomCard(
                img: proudcts[index]["image"],
                title: proudcts[index]["title"],
                subtitle: proudcts[index]["subtitle"],
                price: proudcts[index]["price"],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String img;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(img, height: 100, fit: BoxFit.fill),
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey)),
          Text(
            "$price\$",
            style: TextStyle(
              color: Colors.amber.shade900,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
