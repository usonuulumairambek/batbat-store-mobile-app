import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_for_company/repository/data/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'cart_screens/inner_screen.dart';

class CartButton extends StatefulWidget {

  @override
  _CartButtonState createState() => _CartButtonState();
  final int indexDress;
  final String str;
  final int percent;
  final int cost;
  int lastCost;
  bool liked = false;
  bool shopThing = false;
  int indexOfLikedThings = 0;
  int indexOfShopThings = 0;

  CartButton(this.indexDress, this.str, this.percent, this.cost, this.lastCost);
}

class _CartButtonState extends State<CartButton> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => InnerScreen(widget.indexDress)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 7,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: Provider.of<AllData>(context).images[widget.indexDress].length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = Provider.of<AllData>(context).images[widget.indexDress][index];
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
                            widget.indexDress, widget.str, widget.percent,
                            widget.cost, widget.lastCost,widget.liked, widget.shopThing);
                      }
                    });
                  },
                  icon: Icon(
                    widget.shopThing ?CupertinoIcons.shopping_cart : Icons.add_shopping_cart,
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
                          widget.indexDress, widget.str, widget.percent,
                          widget.cost, widget.lastCost, widget.liked, widget.shopThing);
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => InnerScreen(widget.indexDress)));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
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
        count: Provider.of<AllData>(context).images[widget.indexDress].length,
        effect: WormEffect(
            type: WormType.thin,
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.purple),
      );
}
