import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/data/dummies/furniture_items.dart';
import 'package:furniture_app/presentation/presentation.dart';
import 'package:furniture_app/constants/constants.dart';
import 'package:furniture_app/utilities/utilities.dart';
import 'package:furniture_app/data/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  var homeSelected = true;
  var offerSelected = false;
  var storeSelected = false;
  var profileSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customAppBar(context),
                _customTabBar(),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(0)),
                  child: Container(
                    height: ScreenUtil().screenHeight * 0.6,
                    width: ScreenUtil().screenWidth,
                    child: ListView.builder(
                      itemCount: furnitureItems.length,
                      itemBuilder: (context, index) {
                        return FurnitureItem(furnitureItems[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _customBottomNavigationBar(),
    );
  }

  Padding _customBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(12),
      ),
      child: Material(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _customTab(
              icon: CupertinoIcons.home,
              flag: homeSelected,
              onTap: () {
                setState(() {
                  homeSelected = true;
                  offerSelected = false;
                  storeSelected = false;
                  profileSelected = false;
                });
              },
            ),
            _customTab(
              icon: CupertinoIcons.slash_circle,
              flag: offerSelected,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  offerSelected = true;
                  storeSelected = false;
                  profileSelected = false;
                });
              },
            ),
            _customTab(
              icon: CupertinoIcons.shopping_cart,
              flag: storeSelected,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  offerSelected = false;
                  storeSelected = true;
                  profileSelected = false;
                });
              },
            ),
            _customTab(
              icon: CupertinoIcons.person,
              flag: profileSelected,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  offerSelected = false;
                  storeSelected = false;
                  profileSelected = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  IconButton _customTab({IconData icon, bool flag, Function onTap}) {
    return IconButton(
      icon: Icon(
        icon,
        color: flag ? AppColors.brightSun : AppColors.black,
        size: 38,
      ),
      onPressed: onTap,
    );
  }

  Padding _customTabBar() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(12),
      ),
      child: Stack(
        children: [
          Material(
            elevation: 2.0,
            child: Container(
              height: ScreenUtil().setHeight(65),
              color: AppColors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tabItems.map((tabItem) => AppTabItem(tabItem)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _customAppBar(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: ScreenUtil().setHeight(240),
          width: ScreenUtil().screenWidth,
          color: AppColors.brightSun,
        ),
        Positioned(
          bottom: 50.0,
          right: 100,
          child: Container(
            height: ScreenUtil().setHeight(400),
            width: ScreenUtil().setWidth(400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200.0),
              color: AppColors.lightSoftYellowWithOpacity40,
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 150,
          child: Container(
            height: ScreenUtil().setHeight(300),
            width: ScreenUtil().setWidth(300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150.0),
              color: AppColors.lightSoftYellowWithOpacity50,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(34),
                left: ScreenUtil().setWidth(4),
                right: ScreenUtil().setWidth(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Container(
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(
                          color: AppColors.white,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            AppImagePaths.chris,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                    color: AppColors.white,
                    iconSize: 35.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(50),
                left: ScreenUtil().setWidth(15),
                right: ScreenUtil().setWidth(15),
              ),
              child: AppTextDisplay(
                text: 'Hello , Pino',
                textStyle: AppTextStyles.heading1(),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(8),
                left: ScreenUtil().setWidth(15),
                right: ScreenUtil().setWidth(15),
              ),
              child: AppTextDisplay(
                translation: AppStrings.serviceQuestion,
                textStyle: AppTextStyles.heading2(),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(15),
                ScreenUtil().setHeight(25),
                ScreenUtil().setWidth(15),
                ScreenUtil().setHeight(10),
              ),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.softYellow,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(15),
                      vertical: ScreenUtil().setHeight(15),
                    ),
                    hintText: AppLocalizations.of(context)
                        .translate(AppStrings.search),
                    hintStyle: AppTextStyles.hint(),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
