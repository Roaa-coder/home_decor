import 'package:flutter/material.dart';
import 'package:home_decor/constants.dart';
import 'package:home_decor/screens/details/details_screen.dart';
import 'package:home_decor/screens/welcome/components/models/product.dart';

class shopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 500,
              height: 550,
              child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      )),
                ),
              ),
            ),
          ),
          // SizedBox(
          //  height: 30,
          // ),
          Container(
            width: size.width * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  backgroundColor: Colors.deepPurple[200],
                ),
                onPressed: () {},
                child: Text(
                  "Scan my Space",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 60,
        child: Card(
            child: FittedBox(
          fit: BoxFit.cover,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  product.image,
                  height: 200,
                  // width: 90,
                ),
              ),
              Image.asset(
                "assets/icons/icon-02.png",
                height: 30,
              ),
              Positioned(
                  bottom: 25,
                  right: 95,
                  child: Text(
                    product.title,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
              Positioned(
                bottom: 5,
                right: 60,
                child: Row(
                  children: <Widget>[
                    Text("from",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        )),
                    Text(
                      "\$ ${product.price},-",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
