import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 230.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio:
            16 / 9, // Resimlerin oranını korumak için aspectRatio değeri
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction:
            1, // Resmin tamamen içeride görünmesini sağlamak için viewportFraction değeri 1 olmalı
      ),
      items: [
        'assets/images/anaekran1.jpeg',
        'assets/images/anaekran2.jpeg',
        'assets/images/anaekran3.jpeg',
        "assets/images/anaekran4.jpeg",
      ].map((String imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius:
                  BorderRadius.circular(35.0), // Yuvarlak köşeler için
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit
                      .cover, // Resmin tamamen içeride görünmesini sağlamak için BoxFit.cover kullanılır
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
