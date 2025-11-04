import 'package:denemem1flutter/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // Kutuların yüksekliğini artırdık
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {},
            image: "assets/images/kategori4.jpeg",
            title: "Rose", // 
          ),
          const SizedBox(width: 10),
          CategoryProducts(
            press: () {},
            image: "assets/images/kategori3.jpeg",
            title: "Lavender", // 
          ),
          const SizedBox(width: 10),
          CategoryProducts(
            press: () {},
            image: "assets/images/kategori4.jpeg",
            title: "Daisy", // 
          ),
          const SizedBox(width: 10),
          CategoryProducts(
            press: () {},
            image: "assets/images/kategori3.jpeg",
            title: "Violet", // 
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    required this.image,
    required this.press,
    required this.title, // 
  });

  final String image;
  final VoidCallback press;
  final String title; // 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover, // resmi boyutlandırma
                  width: 100, // resmin genişliği
                  height: 80, // resmin yüksekliği
                ),
              ),
            ),
            SizedBox(height: 5), // Metin ile resim arasına boşluk ekledik
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

