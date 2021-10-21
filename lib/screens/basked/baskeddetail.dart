import 'package:flutter/material.dart';
import 'package:project_for_company/repository/model/product.dart';


class BaskedDetail extends StatelessWidget {
  final Product product;

  const BaskedDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
              },
              child: const Icon(Icons.favorite_border_rounded),
            ),
          )
        ],
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: h,
            width: double.infinity,
            child: Image.network(
                'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/e7633fab0c7b42deae3faa7900c30600_9366/Parka_XPLORIC_zelenyj_DZ1432_01_laydown.jpg',fit: BoxFit.cover,),
          ),
          Text(
            '${product.price} рубль',
            style: const TextStyle(color: Colors.purple),
          ),
          Text(' ${product.name}'),
          Text('В линейке : ${product.inLine}'),
          Text('Цвет : ${product.color}'),
          Text('Размер : ${product.size}'),
          Text('Продавец : ${product.seller}'),
        ]),
      ),
    );
  }
}
