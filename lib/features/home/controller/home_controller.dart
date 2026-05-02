import 'package:e_shop/core/constants/images_path.dart';
import 'package:e_shop/features/home/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  RxInt currentIndex = 0.obs;

  final List<String> images = [
    ImagesPath.banner,
    ImagesPath.banner,
    ImagesPath.banner,
  ];

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  final products = <ProductModel>[
    ProductModel(
      title: 'iPhone 11 64GB',
      brand: 'Apple',
      image: ImagesPath.product,
      discount: '49%',
    ),
    ProductModel(
      title: 'Shoes of Nike',
      brand: 'Nike',
      image: ImagesPath.product,
      discount: '49%',
    ),
  ].obs;
}
