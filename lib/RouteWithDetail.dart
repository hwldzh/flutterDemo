import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "传递数据示例",
  home: ProductList(productList: List<Product>.generate(20, (index) => Product('商品$index', '这是一个商品详情$index')),),
));

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);

}

class ProductList extends StatelessWidget {
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "商品列表"
        ),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              productList[index].title,
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(product: productList[index],))),
          );
        },
      ),
    );
  }

  ProductList({Key key, this.productList}) : super(key : key);



}

class ProductDetail extends StatelessWidget {
  final Product product;


  ProductDetail({Key key, @required this.product}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${product.title}"
        ),
      ),
      body: Center(
        child: Text(
          product.description
        ),
      ),
    );
  }

}