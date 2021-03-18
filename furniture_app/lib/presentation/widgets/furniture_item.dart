import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/constants/constants.dart';
import 'package:furniture_app/data/data.dart';
import 'package:furniture_app/presentation/presentation.dart';

class FurnitureItem extends StatelessWidget {
  final Furniture furniture;

  FurnitureItem(this.furniture);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
        left: ScreenUtil().setWidth(16),
        right: ScreenUtil().setWidth(16),
      ),
      child: Card(
        elevation: 3.0,
        child: Container(
          height: ScreenUtil().setHeight(135),
          width: ScreenUtil().screenWidth,
          color: AppColors.white,
          child: Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(8)),
            child: Row(
              children: [
                _itemImageDisplay(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _itemNameDisplay(),
                        _favoriteButtonDisplay(),
                      ],
                    ),
                    _itemDescriptionDisplay(),
                    Padding(
                      padding: EdgeInsets.only(top: ScreenUtil().setHeight(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: ScreenUtil().setHeight(40),
                            width: ScreenUtil().setWidth(70),
                            color: AppColors.brightOrange,
                            child: Center(
                              child: AppTextDisplay(
                                text: '\$${furniture.price}',
                                textStyle: AppTextStyles.itemPrice(),
                              ),
                            ),
                          ),
                          Container(
                            height: ScreenUtil().setHeight(40),
                            width: ScreenUtil().setWidth(98),
                            color: AppColors.darkSoftYellow,
                            child: Center(
                              child: AppTextDisplay(
                                translation: AppStrings.addToCart,
                                textStyle: AppTextStyles.callToAction(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _itemDescriptionDisplay() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(2),
        // right: ScreenUtil().setWidth(40),
      ),
      child: Container(
        height: ScreenUtil().setHeight(40),
        width: ScreenUtil().screenWidth - 228,
        child: AppTextDisplay(
          textAlign: TextAlign.start,
          translation: furniture.description,
          textStyle: AppTextStyles.itemDetails(),
          maxLines: 5,
        ),
      ),
    );
  }

  Material _favoriteButtonDisplay() {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        height: ScreenUtil().setHeight(25),
        width: ScreenUtil().setWidth(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.white,
        ),
        child: Center(
          child: Icon(
            furniture.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: AppColors.red,
          ),
        ),
      ),
    );
  }

  Padding _itemNameDisplay() {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(30),
      ),
      child: AppTextDisplay(
        translation: furniture.name,
        textStyle: AppTextStyles.itemName(),
      ),
    );
  }

  Padding _itemImageDisplay() {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(12),
      ),
      child: Container(
        width: ScreenUtil().setWidth(140),
        height: ScreenUtil().setHeight(140),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(furniture.imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
