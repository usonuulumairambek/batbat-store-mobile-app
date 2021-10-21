import 'package:flutter/material.dart';
import 'package:project_for_company/navigation/main_navigation.dart';
import 'package:project_for_company/repository/model/product.dart';


class CardItem extends StatelessWidget {
  Product product;

  CardItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
            Navigator.of(context).pushNamed(MainNavigationRouteName.baskedDetail,arguments: product);
          },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/e7633fab0c7b42deae3faa7900c30600_9366/Parka_XPLORIC_zelenyj_DZ1432_01_laydown.jpg'),
                ),
                const SizedBox(
                    width: 8,
                ),
                    SizedBox(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      Text(
                        '${product.price} рубль',
                        style: const TextStyle(color: Colors.purple),
                      ),
                      Text(' ${product.name}'),
                      Text('В линейке : ${product.inLine}'),
                      Text('Цвет : ${product.color}'),
                      Text('Размер : ${product.size}'),
                      Text('Продавец : ${product.seller}'),
                    ],
                  ),
                )
              ]),
            ),
            const Divider(color: Colors.black, height: 1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.purple, // Button color
                      child: InkWell(
                        onTap: () {},
                        child:  const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.add_rounded,color:  Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,right: 8),
                    child: Text('0'),
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.purple, // Button color
                      child: InkWell(
                        onTap: () {},
                        child:  const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.remove_rounded,color:  Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){},
                        child: const Icon(
                          Icons.delete_rounded,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
