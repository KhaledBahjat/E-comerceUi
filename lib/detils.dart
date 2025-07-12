import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key, required this.itemDetils});
  final itemDetils;
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
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
      endDrawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_2_outlined),
            Text(
              '  NoSt0n ',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Store", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset(widget.itemDetils["image"]),
          SizedBox(height: 5),
          Text(
            widget.itemDetils["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            widget.itemDetils["subtitle"],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[400], fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            widget.itemDetils["price"],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.amber),
                ),
              ),
              SizedBox(width: 5),
              Text("Gery ", style: TextStyle(fontSize: 15)),
              SizedBox(width: 5),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(width: 5),
              Text("Black", style: TextStyle(fontSize: 15)),
            ],
          ),
          SizedBox(height: 40),
          Text(
            "Size : 34  35 40 41",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            child: MaterialButton(
              color: Colors.black,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10),
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
