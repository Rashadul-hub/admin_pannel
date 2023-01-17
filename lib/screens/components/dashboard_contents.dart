import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/constants/responsive.dart';
import 'package:admin_pannel/screens/components/custom_appbar.dart';
import 'package:admin_pannel/screens/components/top_preferals.dart';
import 'package:admin_pannel/screens/components/users.dart';
import 'package:admin_pannel/screens/components/users_by_device.dart';
import 'package:admin_pannel/screens/components/viewers.dart';
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
          Column(
            children: [
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          width: appPadding,
                        ),
                        Row(
                          children: [
                            if (!Responsive.isMobile(context))
                              Expanded(
                                child: TopPreferals(),
                                flex: 2,
                              ),
                            if (Responsive.isMobile(context))
                              SizedBox(
                                width: appPadding,
                              ),
                            Expanded(
                              child: Viewers(),
                              flex: 3,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        SizedBox(
                          height: appPadding,
                        ),
                        if (Responsive.isMobile(context))
                          SizedBox(
                            height: appPadding,
                          ),
                        if (Responsive.isMobile(context)) TopPreferals(),
                        if (Responsive.isMobile(context))
                          SizedBox(
                            height: appPadding,
                          ),
                        if (Responsive.isMobile(context)) UsersByDevice(),
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
                      child: UsersByDevice(),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
