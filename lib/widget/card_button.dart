import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_for_company/repository/data/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:project_for_company/cart_screens/inner_screen.dart';

class CartButton extends StatefulWidget {

  @override
  _CartButtonState createState() => _CartButtonState();
  final idOfStaff;
  final List<String>images;
  final String str;
  final int percent;
  final int cost;
  int lastCost;
  bool liked;
  bool shopThing;
  int indexOfLikedThings = 0;
  int indexOfShopThings = 0;
  List<String> characteristic;

  CartButton({required this.idOfStaff,required this.images,required this.str,required this.percent,
    required this.cost,required this.lastCost,this.liked = false, this.shopThing = false,required this.characteristic});
}

class _CartButtonState extends State<CartButton> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => InnerScreen(images: widget.images, cost: widget.cost, lastCost: widget.lastCost, characteristic: widget.characteristic)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 7,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: widget.images.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = widget.images[index];
                return buildButton(urlImage, realIndex);
              },
              options: CarouselOptions(
                height: 250,
                viewportFraction: 1,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildIndicator(),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: widget.percent != 0 ? Colors.purple : Colors.white,
                ),
                child: Text(widget.percent != 0 ?'-${widget.percent}%' : '',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.shopThing) {
                        widget.shopThing= false;
                        Provider.of<AllData>(context, listen: false).removeShop(widget.indexOfShopThings);
                      } else{
                        widget.shopThing = true;
                        widget.indexOfShopThings = Provider.of<AllData>(context, listen: false).addShop(
                            widget.idOfStaff, widget.images, widget.str, widget.percent,
                            widget.cost, widget.lastCost,widget.liked, widget.shopThing, widget.characteristic);
                      }
                    });
                  },
                  icon: Icon(
                    widget.shopThing ? CupertinoIcons.delete_simple: CupertinoIcons.shopping_cart,
                    color: Colors.purple,
                  )),
              trailing: IconButton(
                icon: Icon(widget.liked ? CupertinoIcons.heart_solid:CupertinoIcons.heart,color: Colors.purple ),
                onPressed: () {
                  setState(() {
                    if (widget.liked) {
                      widget.liked = false;
                      Provider.of<AllData>(context, listen: false).removeLiked(widget.indexOfLikedThings);
                    } else{
                      widget.liked = true;
                      widget.indexOfLikedThings =  Provider.of<AllData>(context, listen: false).addLiked(
                          widget.idOfStaff, widget.images, widget.str, widget.percent,
                          widget.cost, widget.lastCost, widget.liked, widget.shopThing, widget.characteristic);
                    }
                  });
                },
              ),
            ),
            Text(widget.str),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.cost} руб', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(
                    widget.lastCost == 0 ? '':'${widget.lastCost} руб',
                    style: TextStyle(
                        color: Colors.grey, decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(String urlImage, int index) => GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => InnerScreen(images: widget.images, cost: widget.cost, lastCost: widget.lastCost, characteristic: widget.characteristic)));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage(urlImage),
              fit: BoxFit.fitHeight,
            ),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(10),
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.images.length,
        effect: WormEffect(
            type: WormType.thin,
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.purple),
      );
}
