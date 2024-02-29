import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Tap extends StatelessWidget {
  Tap({super.key});

  PageController controller=PageController();

  int pagno=0;

  @override
  Widget build(BuildContext context) {
    List<String>images=["assets/images/img.png","assets/images/c.png","assets/images/splash.png"];
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 200.0,enlargeCenterPage: true),
          items: images.map((i) {
            return PageView(
             controller: controller,

              children: [
              Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.pink,borderRadius: BorderRadius.circular(25)

              ),


              child: ClipRRect(borderRadius: BorderRadius.circular(25),child: Image.asset(i,fit: BoxFit.fill)),
            ),
                SizedBox(height: 10,),

                SmoothPageIndicator(
                  controller: controller,  // PageController
                  count:  images.length,

                  effect:  WormEffect(),  // your preferred effect
                  onDotClicked: (index){



                  },

                )

              ],


            );
          }).toList(),
        ),




      ],
    );
  }
}
