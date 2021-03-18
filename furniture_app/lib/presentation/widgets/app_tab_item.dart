import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/constants/constants.dart';
import 'package:furniture_app/data/data.dart';
import 'package:furniture_app/presentation/presentation.dart';

class AppTabItem extends StatelessWidget {
  final TabItemModel tabItem;

  AppTabItem(this.tabItem);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: ScreenUtil().setHeight(65),
        width: ScreenUtil().screenWidth / 4,
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tabItem.imagePath),
                ),
              ),
            ),
            AppTextDisplay(
              translation: tabItem.name,
              textStyle: AppTextStyles.tabName(),
            ),
          ],
        ),
      ),
    );
  }
}
