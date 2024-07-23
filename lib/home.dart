import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_and_dots_indicator/widgets/buttons_row.dart';
import 'package:carousel_slider_and_dots_indicator/widgets/carousel_widget.dart';
import 'package:carousel_slider_and_dots_indicator/widgets/smooth_indicator.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({super.key});

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  List<Widget> items = [
    const CarouselWidget(path: 'assets/1.jpeg',),
    const CarouselWidget(path: 'assets/2.jpeg',),
    const CarouselWidget(path: 'assets/3.jpeg',),
  ];
  int currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: items,
            carouselController: _controller,
            options: CarouselOptions(
              height: 250,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              viewportFraction: 1.0,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            count: items.length,
            activeIndex: currentIndex,
            onDotClicked: (index) {
              currentIndex = index;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 25,
          ),
          ButtonsRow(
            currentIndex: currentIndex,
            onTap: () {
              _controller.previousPage(
                duration: const Duration(seconds: 10),
                curve: Curves.fastLinearToSlowEaseIn,
              );
              setState(() {});
            },
            onPressed: () {
              _controller.nextPage(
                duration: const Duration(seconds: 10),
                curve: Curves.fastLinearToSlowEaseIn,
              );
              setState(() {});
            },
          ),
        ],
      ),
    ));
  }
}