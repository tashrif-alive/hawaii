import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Widget> carouselItems = [
  Image.network("jBanner"),
  Image.network("jBanner"),
  Image.network("jBanner"),
  Image.network("jBanner"),
  Image.network("jBanner"),
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
