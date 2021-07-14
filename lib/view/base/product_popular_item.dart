import 'package:flutter/material.dart';
import 'package:sixam/data/model/popular_items.dart';
import 'package:http/http.dart' as http;
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int currentPage = 1;
  List<ProductElement> products = [];

  Future<bool> getProductData() async {
    final Uri uri = Uri.parse(
        'https://dev.6amtech.com/efood/api/v1/products/latest?limit=10&&offset=$currentPage');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = productFromJson(response.body);
      products = result.products;
      currentPage++;
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          child: Image.network(
                            'https://dev.6amtech.com/efood/storage/app/public/product/' +
                                product.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(fontSize: 20),
                        ),
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 4,
                            size: 15.0,
                            isReadOnly: true,
                            color: Colors.grey,
                            borderColor: Colors.grey,
                            spacing: 0.0),
                        Text("\$ 12.23"),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(Icons.add),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: products.length);
  }
}
