import 'package:flutter/material.dart';
import 'package:project_for_company/repository/model/product.dart';

import 'widgets/item_basked.dart';

class Basked extends StatelessWidget {
  const Basked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>  CardItem(
                  product: Product(
                    price: 1010,
                    name: 'Куртка Аддидас',
                    inLine: 4,
                    color: 'черный',
                    size: 'Стандарт (42-48)',
                    seller: 'Adidas'
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
                itemCount: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Доставка и оплата'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
