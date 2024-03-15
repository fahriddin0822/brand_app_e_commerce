import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';

class ProductData {
  String nameOfGroup;
  String nameOfProduct;
  String price;
  String image;
  int mark;
  ProductData({
    required this.image,
    required this.price,
    required this.nameOfGroup,
    required this.nameOfProduct,
    required this.mark,
  });
}

List<ProductData> products = [
  ProductData(
      image: AppImages.bag,
      price: "\$1231",
      mark: 3,
      nameOfProduct: "Meat",
      nameOfGroup: "Meals"),
  ProductData(
      image: AppImages.drinks,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
  ProductData(
      image: AppImages.drinks,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
  ProductData(
      image: AppImages.bag,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
  ProductData(
      image: AppImages.avatarImage,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
  ProductData(
      image: AppImages.product,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
  ProductData(
      image: AppImages.avatarImage,
      price: "\$1231",
      nameOfProduct: "Meat",
      nameOfGroup: "Meals",
      mark: 3),
];
