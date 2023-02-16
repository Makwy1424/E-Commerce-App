import 'package:e_com/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_com/components/custom_appBar.dart';
import 'components/body.dart';

class MyOrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your Orders',
      ),
      body: Body(),
    );
  }
}
