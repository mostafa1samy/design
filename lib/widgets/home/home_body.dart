import 'package:flutter/material.dart';

import 'package:design/models/product.dart';

import 'package:design/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: 1),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 1.0),
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {

                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
