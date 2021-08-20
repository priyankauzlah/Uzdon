class Food {
  int foodId;
  String foodName;
  int foodPrice;
  String foodDescription;
  String foodImage;

  Food(
      {required this.foodId,
      required this.foodName,
      required this.foodPrice,
      required this.foodDescription,
      required this.foodImage});
}

var foodList = [
  Food(
    foodId: 1,
    foodName: 'Ontama Uzdon',
    foodPrice: 42000,
    foodDescription:
        'Mie udon yang disajikan dengan bukake dashi hangat atau dingin dengan topping telur omega -3 setengah matang.',
    foodImage: 'https://i.ibb.co/vkBqQ2k/image-removebg-preview.png',
  ),
  Food(
    foodId: 2,
    foodName: 'Tori Baitan Uzdon',
    foodPrice: 56000,
    foodDescription:
        'Mie udon khas Jepang dengan kuah sup ayam yang gurih dan bakso ayam yang lezat dan enak.',
    foodImage: 'https://i.ibb.co/XFBRSFm/image-removebg-preview-1.png',
  ),
  Food(
    foodId: 3,
    foodName: 'Hot Tori Baitan Uzdon',
    foodPrice: 62000,
    foodDescription:
        'Mie udon dengan sup ayam, bertabur daging ayam spicy dan jamur. Pedas pas rasa gurih ayam.',
    foodImage: 'https://i.ibb.co/J3JPZwL/image-removebg-preview-2.png',
  ),
  Food(
    foodId: 4,
    foodName: 'Niku Uzdon',
    foodPrice: 63000,
    foodDescription:
        'Mie udon disajikan dengan sup kake dashi dan daging sapi sukiyaki impor yang manis juga gurih.',
    foodImage: 'https://i.ibb.co/tCQd67c/image-removebg-preview-4.png',
  ),
  Food(
    foodId: 5,
    foodName: 'Beef Curry Uzdon',
    foodPrice: 62000,
    foodDescription:
        'Mie udon khas Jepang dengan kuah kari gurih khas Jepang, disajikan dengan daging sapi sukiyaki.',
    foodImage: 'https://i.ibb.co/BgxWTQB/image-removebg-preview-5.png',
  ),
  Food(
    foodId: 6,
    foodName: 'Chicken Curry Uzdon',
    foodPrice: 49000,
    foodDescription:
        'Mie udon khas Jepang yang disajikan dengan kuah kari khas Jepan dan katsu ayam krispi spesial.',
    foodImage: 'https://i.ibb.co/t2fDgWV/image-removebg-preview-6.png',
  ),
  Food(
    foodId: 7,
    foodName: 'Kitsune Uzdon',
    foodPrice: 56000,
    foodDescription:
        'Mie udon dengan kuah kitsune veggie dan topping kulit tahu inari. Cocok untuk yang vegan atau yang vegetarian',
    foodImage: 'https://i.ibb.co/gWXpT6V/image-removebg-preview-7.png',
  ),
  Food(
    foodId: 8,
    foodName: 'Abura Uzdon',
    foodPrice: 58000,
    foodDescription:
        'Mie udon tanpa kuah dengan saus abura dengan potongan daging ayam teriyaki dan rumput laut. Tersedia pilihan Original & Spicy',
    foodImage: 'https://i.ibb.co/mFCZ7Tk/image-removebg-preview-8.png',
  ),
  Food(
    foodId: 9,
    foodName: 'Beef Carbonara Uzdon',
    foodPrice: 62000,
    foodDescription:
        'Mie Udon creamy dengan topping sausage dan campuran garlic mayo cream, dan taburan keju cheddar, blackpepper dan parsley',
    foodImage: 'https://i.ibb.co/105bd2K/image-removebg-preview-9.png',
  ),
  Food(
    foodId: 10,
    foodName: 'Hokkaido Miso Uzdon',
    foodPrice: 57000,
    foodDescription:
        'Mie udon autentik jepang dengan kuah miso yang kaya rasa dilengkapi dengan potongan daging ayam teriyaki, jagung manis, dan butter',
    foodImage: 'https://i.ibb.co/Tt0mv9f/image-removebg-preview-10.png',
  ),
  Food(
    foodId: 11,
    foodName: 'Beef Abura Uzdon',
    foodPrice: 56000,
    foodDescription:
        'Mie Udon yang disajikan dengan saus abura tanpa kuah dengan sukiyaki, manis gurih. Tersedia dalam rasa original & spicy',
    foodImage: 'https://i.ibb.co/Tt0mv9f/image-removebg-preview-10.png',
  ),
  Food(
    foodId: 12,
    foodName: 'Hot Beef Kaburi Uzdon',
    foodPrice: 61000,
    foodDescription:
        'Mie Udon dengan Kuah Kake, Sukiyaki Beef, Miso base, pedasnya Spicy Chilli, daun bawang, wijen dan tenkasu. Pedas dan gurih.',
    foodImage: 'https://i.ibb.co/5vn79Y6/image-removebg-preview-12.png',
  ),
  Food(
    foodId: 13,
    foodName: 'Unagi Carbonara',
    foodPrice: 58000,
    foodDescription:
        'Udon gurih dengan saus carbonara garlic mayo, yang dilengkapi dengan unagi sukiyaki, fried egg saboro, taburan keju cheddar dan parsley.',
    foodImage: 'https://i.ibb.co/16zx5Sx/image-removebg-preview-13.png',
  ),
  Food(
    foodId: 14,
    foodName: 'Spicy Tori Uzdon',
    foodPrice: 62000,
    foodDescription:
        'Mie udon tanpa kuah yang dilengkai dengan daging ayam pedas, jamur, rumput laut, yang disajikan dengan saus abura.',
    foodImage: 'https://i.ibb.co/J3PGqHc/image-removebg-preview-14.png',
  ),
  Food(
    foodId: 15,
    foodName: 'Hokadate Uzdon',
    foodPrice: 49000,
    foodDescription:
        'Mie udon dengan kombinasi Ebi Furai, serta Bechamel Sauce Crab yang creamydengan Sup Bukkake Dashi yang gurih dan hangat.',
    foodImage: 'https://i.ibb.co/ZxkWJk0/image-removebg-preview-15.png',
  ),
  Food(
    foodId: 16,
    foodName: 'Kake Uzdon',
    foodPrice: 55000,
    foodDescription:
        'Mie udon authentik Jepang yang hangat, disajikan dengan sup kake dashi yang juga hangat.',
    foodImage: 'https://i.ibb.co/xjYRCGN/image-removebg-preview-16.png',
  ),
];
