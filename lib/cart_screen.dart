import 'package:ecommerce/product_info.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static String routeName = '/cart';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'Your Cart',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Item: 3',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 10),
              )
            ],
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('${product[index].image}'),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${product[index].name}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                '${product[index].price}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: product.length)));
  }
}
