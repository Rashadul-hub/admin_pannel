import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/data/data.dart';
import 'package:flutter/material.dart';

import 'discussion_info_detail.dart';

// Discussion Side Bar On Right Side of the panel
class Discussions extends StatelessWidget {
  const Discussions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discussions',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: textColor.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
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
              itemCount: discussionData.length,
              itemBuilder: (context, index) => DiscussionInfoDetail(
                info: discussionData[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
