import 'package:furniture_app/constants/constants.dart';
import 'package:furniture_app/data/data.dart';

var furnitureItems = [
  Furniture(
    name: AppStrings.furnitureItemName,
    imagePath: AppImagePaths.ottoman,
    description: AppStrings.furnitureItemDescription,
    price: 248,
  ),
  Furniture(
    name: AppStrings.furnitureItemName,
    imagePath: AppImagePaths.anotherChair,
    description: AppStrings.furnitureItemDescription,
    isFavorite: true,
    price: 248,
  ),
  Furniture(
    name: AppStrings.furnitureItemName,
    imagePath: AppImagePaths.chair,
    description: AppStrings.furnitureItemDescription,
    isFavorite: true,
    price: 248,
  ),
];
