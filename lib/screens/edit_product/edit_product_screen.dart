import 'package:e_com/models/Product.dart';
import 'package:e_com/screens/edit_product/provider_models/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/body.dart';

class EditProductScreen extends StatelessWidget {
  final Product? productToEdit;

  const EditProductScreen({Key? key, this.productToEdit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductDetails(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF800f2f),
          centerTitle: true,
          title: Text('Add Product'),
        ),
        body: Body(
          productToEdit: productToEdit,
        ),
      ),
    );
  }
}
