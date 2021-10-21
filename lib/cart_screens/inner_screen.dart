import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_for_company/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:provider/provider.dart';

class InnerScreen extends StatefulWidget {
  final int indexDress;
  int cost = 1500;
  int lastCost = 0;

  List<String> characteristic = ['Nice', 'Кыргызстан','ЕАС(Томоженный союз)','России,Казахстану, Беларуси',
  'Демисезон', 'Трехнитка с начесом', 'без застежки', 'каюшое' , 'округлый', 'начес', 'оверсайз','с капюшеном' ,'Детский'];


  InnerScreen(this.indexDress);

  @override
  _InnerScreenState createState() => _InnerScreenState();
}

class _InnerScreenState extends State<InnerScreen> {
  List<int> sizes = [];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.characteristic[0]),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount:
                Provider.of<AllData>(context).images[widget.indexDress].length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = Provider.of<AllData>(context)
                  .images[widget.indexDress][index];
              return buildButton(urlImage, realIndex);
            },
            options: CarouselOptions(
              height: 400,
              viewportFraction: 1,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Center(child: buildIndicator())),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.lastCost == 0 ? '' : '${widget.lastCost} руб',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough, fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${widget.cost} руб',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Комплектация: ${widget.characteristic[0]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Страна-производитель: ${widget.characteristic[1]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Сертификат: ${widget.characteristic[2]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Беспл. доставка: по ${widget.characteristic[3]}'),
              ),
              //TODO: отсюда
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Сезон: ${widget.characteristic[4]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ткань: ${widget.characteristic[5]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Вид застежки: ${widget.characteristic[6]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Воротник: ${widget.characteristic[7]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Утеплитель: ${widget.characteristic[8]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Покрой: ${widget.characteristic[9]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Капишон: ${widget.characteristic[10]}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Детский: ${widget.characteristic[11]}'),
              ),
            ],
          ),)
        ],
      ),
    );
  }

  //TODO For creating images and indicators
  Widget buildButton(String urlImage, int index) => Image.network(urlImage);
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
