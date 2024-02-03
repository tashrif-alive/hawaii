import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Widget> carouselItems = [
  Image.asset("assets/images/benefits/bene.png"),
  Image.asset("assets/images/benefits/bene2.png"),
  Image.asset("assets/images/benefits/bene3.png"),
  Image.asset("assets/images/benefits/bene4.png"),
  Image.asset("assets/images/benefits/bene5.png"),
  Image.asset("assets/images/benefits/bene6.png"),

];
class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 /9,
        autoPlayInterval: const Duration(seconds: 2),
      ),
      items: carouselItems,
    );
  }
}
