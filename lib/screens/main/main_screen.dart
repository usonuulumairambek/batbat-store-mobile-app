import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_for_company/repository/data/data.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:project_for_company/widget/ads_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  int activeIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: [
        Container(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:Provider.of<AllData>(context).circles,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text('Горячие предложения',
                style: TextStyle(color: Colors.purple))),
        Column(
          children: [
            CarouselSlider.builder(
              itemCount: Provider.of<AllData>(context).urlAds.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = Provider.of<AllData>(context).urlAds[index][0];
                final str = Provider.of<AllData>(context).urlAds[index][1];
                return buildImage(urlImage, realIndex, str);
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
            child: Text('Все товары', style: TextStyle(color: Colors.purple))),
        GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (1 / 2),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: Provider.of<AllData>(context).allStaff,
        )
      ]),
    );
  }

//TODO functions for images
  Widget buildImage(String urlImage, int index, String dis) => InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AdsScreen(urlImage, dis)));
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

  // Widget buildButton(String urlImage, int index, String dis) => GestureDetector(
  //       onTap: () {
  //         Navigator.push(context, MaterialPageRoute(builder: (context) => AdsScreen(urlImage, dis)));
  //       },
  //       child: Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.all(Radius.circular(30)),
  //           image: DecorationImage(
  //             image: NetworkImage(urlImage),
  //             fit: BoxFit.cover,
  //           ),
  //           color: Colors.grey,
  //         ),
  //         margin: EdgeInsets.all(10),
  //       ),
  //     );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: Provider.of<AllData>(context).urlAds.length,
        effect: WormEffect(
            type: WormType.thin,
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.purple),
      );
}
