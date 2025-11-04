import 'package:denemem1flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:denemem1flutter/screens/bilgi_ekrani.dart';

class RecentProduct extends StatelessWidget {
  final productList = [
    {
      "name": "Peony Rose Peach",
      "image": "assets/images/cicek3.jpeg",
      "price": 20,
      "disc": ""
    },
    {
      "name": "Dream",
      "image": "assets/images/cicek4.jpeg",
      "price": 25,
      "disc": ""
    },
    {
      "name": "Candle Light",
      "image": "assets/images/cicek2.jpeg",
      "price": 35,
      "disc": ""
    },
    {
      "name": "Campenella",
      "image": "assets/images/cicek5.jpeg",
      "price": 30,
      "disc": ""
    },
  ];

  RecentProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.70,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecentSingleProducts(
          recent_single_prod_disc: productList[index]["disc"],
          recent_single_prod_name: productList[index]["name"],
          recent_single_prod_image: productList[index]["image"],
          recent_single_prod_price: productList[index]["price"],
        );
      },
    );
  }
}

class RecentSingleProducts extends StatefulWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;
  RecentSingleProducts({
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_disc,
  });

  @override
  State<RecentSingleProducts> createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  bool isLike = false;
  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kPrimaryColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.recent_single_prod_image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text("\$${widget.recent_single_prod_price}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  icon: Icon(
                    isLike ? Icons.favorite : Icons.favorite_border_outlined,
                    color: isLike ? Colors.red : inactiveColor,
                    size: 15,
                  ),
                  onPressed: () {
                    setState(() {
                      isLike = !isLike;
                    });
                  },
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(
                        productDescription: "This special bouquet stands out with its elegant rose colors and beautiful aroma.",
                        productImage: "assets/images/cicek4.jpeg",
                        productName: "Dream",
                        productPrice: 25,
                      ),
                    ),
                  );
                  // Burada tıklanabilir butona basıldığında yapılacak işlemleri ekleyebilinir.
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Show',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
