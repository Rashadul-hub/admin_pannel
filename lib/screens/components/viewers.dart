import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/screens/components/view_line_chart.dart';
import 'package:flutter/material.dart';

class Viewers extends StatelessWidget {
  const Viewers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
            ),
          ),
          Expanded(
            child: ViewLineChart(),
          )
        ],
      ),
    );
  }
}
