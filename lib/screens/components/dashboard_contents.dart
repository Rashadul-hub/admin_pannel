import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/screens/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [CustomAppbar()],
      ),
    ));
  }
}
