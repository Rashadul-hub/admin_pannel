import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/screens/components/radial_painter.dart';
import 'package:flutter/material.dart';

class UsersByDevice extends StatelessWidget {
  const UsersByDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Users by devices",
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            margin: EdgeInsets.all(appPadding),
            padding: EdgeInsets.all(appPadding),
            height: 230,
            child: CustomPaint(
              foregroundPainter: RadialPainter(
                bgColor: textColor.withOpacity(0.1),
                lineColor: primaryColor,
                percent: 0.7,
                width: 18.0,
              ),
              child: Center(
                child: Text(
                  '70%',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
