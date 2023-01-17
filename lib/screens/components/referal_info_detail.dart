import 'package:admin_pannel/constants/constants.dart';
import 'package:admin_pannel/models/referal_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Top Referals information List
class ReferalInfoDetail extends StatelessWidget {
  const ReferalInfoDetail({Key? key, required this.info}) : super(key: key);

  final ReferalInfoModel info;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: appPadding),
      padding: EdgeInsets.all(appPadding / 2),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(appPadding / 1.5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: info.color!.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.asset(
              info.svgSrc!,
              color: info.color!,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    info.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  Text(
                    '${info.count!}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
