import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      // "assets/images/slider_images/mime_pic1.jpg",
      // "assets/images/slider_images/dawn.jpg",
      //"assets/images/slider_images/mime_map.png",
      "assets/images/slider_images/mime_pic1.jpg",
      "assets/images/slider_images/pic2.png",
      "assets/images/slider_images/pic3.jpg",
      "assets/images/slider_images/pic4.jpg",
      "assets/images/slider_images/pic5.jpg",
      // "assets/images/slider_images/green.jpg",
      "assets/images/slider_images/slide02.jpg",
      //  "assets/images/slider_images/natural.jpg",
      "assets/images/slider_images/100mb.png",
      "assets/images/slider_images/mime_circle.png",
      "assets/images/slider_images/sami_vai2.jpg",
      "assets/images/slider_images/sami_vai1.jpg",
    ];
    return Container(
      margin: EdgeInsets.all(5),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 350,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageList[i],
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              var url = imageList[i];
              print("===========${url.toString()}============");
            },
          );
        },
      ),
    );
  }
}
