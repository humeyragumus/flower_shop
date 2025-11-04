import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:denemem1flutter/constants.dart';
import 'package:denemem1flutter/screens/category/category.dart';
import 'package:denemem1flutter/screens/product/recent_product.dart';
import 'package:denemem1flutter/screens/slider/slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // NOT: Burada Scaffold YOK. Scaffold üst seviyede (HomeScreen) olmalı.
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Üst bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Drawer açma butonu
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Builder(
                    builder: (ctx) => IconButton(
                      icon: const Icon(Icons.dashboard, color: kPrimaryColor),
                      onPressed: () {
                        // Üstteki Scaffold (HomeScreen) içindeki Drawer'ı açar
                        Scaffold.of(ctx).openDrawer();
                      },
                    ),
                  ),
                ),

                // Başlık
                Text(
                  'Flower Shop',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    color: Color.fromARGB(255, 207, 179, 197),
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // Profil/placeholder
                const CircleAvatar(backgroundColor: kPrimaryColor),
              ],
            ),

            const SizedBox(height: 20),

            // Arama + Sıralama satırı
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(color: Colors.black38, blurRadius: 4),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.search, color: kPrimaryColor),
                        hintText: 'Search flowers',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 4),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort_by_alpha, color: Colors.white),
                    tooltip: 'Sort',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Slider
            const ProductSlider(),

            const SizedBox(height: 20),

            // Kategoriler
            const Category(),

            const SizedBox(height: 20),

            // Son ürünler
            // Eğer RecentProduct kendi içinde ListView ise ve ayrı scroll istemiyorsan:
            // SizedBox ile yükseklik veriyoruz ki overflow olmasın.
            SizedBox(
              height: 200,
              child: RecentProduct(),
            ),

            const SizedBox(height: 24), // bottom nav ile çakışmayı önlemek için alt boşluk
          ],
        ),
      ),
    );
  }
}