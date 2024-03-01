import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabbar_page/flutter_tabbar_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:chips_choice/chips_choice.dart';


class Tap extends StatefulWidget {
  Tap({super.key});

  @override
  State<Tap> createState() => _TapState();
}

class _TapState extends State<Tap> {
  PageController controller = PageController();


  List<String> tags = [];
  List<String> options = [
    'News', 'Entertainment', 'Politics',
    'Automotive', 'Sports', 'Education',
    'Fashion', 'Travel', 'Food', 'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/img.png",
      "assets/images/c.png",
      "assets/images/splash.png"
    ];
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 200.0, enlargeCenterPage: true),
          items: images.map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(i, fit: BoxFit.fill)),
            );
          }).toList(),
        ),
        SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: images.length,

          effect: WormEffect(), // your preferred effect
          onDotClicked: (index) {},
        ),


    ChipsChoice<String>.multiple(
      leading: Icon(Icons.add_circle_outline),
    choiceCheckmark: true,
    padding: EdgeInsets.all(10),

    value: tags,
    onChanged: (val) => setState(() => tags = val),
    choiceItems: C2Choice.listFrom<String, String>(
    source: options,
    value: (i, v) => v,
    label: (i, v) => v,
    ),

    ),


  ]
    );
  }
}
