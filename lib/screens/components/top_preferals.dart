import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/data/data.dart';
import 'package:admin_pannel/screens/components/referal_info_detail.dart';
import 'package:flutter/material.dart';

class TopPreferals extends StatelessWidget {
  const TopPreferals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: referalData.length,
              itemBuilder: (context, index) => ReferalInfoDetail(
                info: referalData[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
