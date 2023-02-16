import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:e_com/components/custom_appBar.dart';

class ChangePhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Change Phone Number',
      ),
      body: Body(),
    );
  }
}
