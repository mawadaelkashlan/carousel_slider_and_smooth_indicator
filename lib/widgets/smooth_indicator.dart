import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicator extends StatefulWidget {
  final int count;
  final int activeIndex;
  final Function(int) onDotClicked;
  const SmoothPageIndicator({super.key, required this.count, required this.activeIndex, required this.onDotClicked});

  @override
  State<SmoothPageIndicator> createState() => _SmoothPageIndicator();
}

class _SmoothPageIndicator extends State<SmoothPageIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      axisDirection: Axis.horizontal,
      count: widget.count,
      effect: const ExpandingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: Colors.lightBlue,
        dotHeight: 8,
        dotWidth: 20,
        spacing: 6,
        expansionFactor: 2,
        paintStyle: PaintingStyle.fill,
      ),
      activeIndex: widget.activeIndex,
      onDotClicked:widget.onDotClicked,
    );
  }
}
