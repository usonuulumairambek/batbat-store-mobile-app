import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_for_company/repository/data/data.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:project_for_company/widget/card_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [
        Column(
          children: [
            CarouselSlider.builder(
              itemCount: Provider.of<AllData>(context).url.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = Provider.of<AllData>(context).url[index];
                return buildImage(urlImage, realIndex);
              },
              options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                  autoPlayAnimationDuration: Duration(seconds: 3)),
            ),
            buildIndicator(),
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text('Горячие предложения',
                style: TextStyle(color: Colors.purple))),
        CarouselSlider.builder(
          itemCount: Provider.of<AllData>(context).hotUrl.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = Provider.of<AllData>(context).hotUrl[index];
            return buildButton(urlImage, realIndex);
          },
          options: CarouselOptions(
              height: 150,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
              autoPlayAnimationDuration: Duration(seconds: 5)),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text('Все товары', style: TextStyle(color: Colors.purple))),
        GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (1 / 2),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            CartButton(0,'Худи', 10, 2000, 0, false),
            CartButton(1,'Air force 1', 10, 2000, 0, false),
            CartButton(0,'Худи', 10, 2000, 0, false),
            CartButton(1,'Air force 1', 10, 2000, 0, false),
          ],
        )
      ]),
    );
  }

//TODO functions for images
  Widget buildImage(String urlImage, int index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
        ),
        margin: EdgeInsets.all(10),
      );

  Widget buildButton(String urlImage, int index) => GestureDetector(
        onTap: () {
          print('done');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            image: DecorationImage(
              image: NetworkImage(urlImage),
              fit: BoxFit.cover,
            ),
            color: Colors.grey,
          ),
          margin: EdgeInsets.all(10),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: Provider.of<AllData>(context).url.length,
        effect: WormEffect(
            type: WormType.thin,
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.purple),
      );
}
