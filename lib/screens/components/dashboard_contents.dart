import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/constants/responsive.dart';
import 'package:admin_pannel/screens/components/custom_appbar.dart';
import 'package:admin_pannel/screens/components/users.dart';
import 'package:flutter/material.dart';

import 'analytic_cards.dart';
import 'discussions.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          CustomAppbar(),
          SizedBox(
            height: appPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    AnalyticCards(),
                    SizedBox(
                      height: appPadding,
                    ),
                    Users(),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        height: appPadding,
                      ),
                    if (Responsive.isMobile(context)) Discussions(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(
                  width: appPadding,
                ),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: Discussions(),
                ),
            ],
          ),
        ],
      ),
    ));
  }
}
