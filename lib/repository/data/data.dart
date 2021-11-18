import 'package:flutter/cupertino.dart';
import '../../widget/card_button.dart';
import 'package:project_for_company/widget/models/story_model.dart';
import 'package:project_for_company/widget/circle_story.dart';

class AllData extends ChangeNotifier {

  List<CartButton> likedThing = [];
  List<CartButton> shop = [];

  List <List<CartButton>> cartCategories = [[], [], [], [], [], [], [], [],[]];

  List<CartButton> allStaff = [
    CartButton(idOfStaff: 0, images: ['https://kosmo-shop.com/25232/khudi-offline.jpg',
      'https://cdn1.ozone.ru/s3/multimedia-e/c1200/6041587538.jpg',
      'https://images.wbstatic.net/big/new/12970000/12977970-1.jpg',
      'https://imgcdn.loverepublic.ru/upload/images/11521/thumb/600_9999/1152120340_41.jpg',], str: 'Худи', percent: 0, cost: 1000, lastCost: 2000,
        characteristic: ['Норм худи бери','Nice', 'Кыргызстан','ЕАС(Томоженный союз)','России,Казахстану, Беларуси', 'Демисезон', 'Трехнитка с начесом']),
    CartButton(idOfStaff: 0, images: ['https://www.thenextsole.com/storage/images/DM8461-001.png',
      'https://sneakerfreak.ru/wp-content/uploads/2021/08/Undefeated-Nike-Air-Force-1-5-On-It-DM8461-001-Release-Date-2-scaled.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxZM2XG-um82hjUDqNRZaHuj1oIwYL69Kvo6XQLNNoIMjRqkVCfQLbKSoZC-pHaC6RmM4&usqp=CAU',
      'https://sneakernews.com/wp-content/uploads/2021/07/undefeated-nike-air-force-1-low-grey-blue-red-1.jpg',], str: 'Air force 1', percent: 0, cost: 1000, lastCost: 2000,
    characteristic: ['Кросовки Nike','Nice', 'Кыргызстан','ЕАС(Томоженный союз)','России,Казахстану, Беларуси',
      'Демисезон', 'Кожа'],),
    CartButton(idOfStaff: 0, images: ['https://stoneforest.ru/wp-content/uploads/2019/05/timberland.jpg',
      'https://cdn-images.farfetch-contents.com/13/67/87/16/13678716_21607303_600.jpg',], str: 'Timberland', percent: 0, cost: 5000, lastCost: 8000,
      characteristic: ['Timberland','Timberland', 'Кыргызстан','ЕАС(Томоженный союз)','России,Казахстану, Беларуси',
        'Демисезон', 'Кожа'],),
  ];

  List<List<String>> urlAds = [
    ['https://image.shutterstock.com/image-vector/sale-poster-3d-pastel-illustration-600w-1838372179.jpg', 'Description'],
    ['https://image.shutterstock.com/image-vector/online-delivery-service-concept-order-600w-1505134385.jpg', 'Description'],
    ['https://image.shutterstock.com/image-photo/love-holiday-sales-shop-retail-600w-1702302571.jpg', 'description']
  ];
  List<List<String>> hotUrl = [
    ['https://adparlor.com/wp-content/uploads/2020/06/20AP_LatestShoppableAds2.jpg', 'description'],
    ['https://static.doofinder.com/main-files/uploads/2018/08/facebook-ads-ecommerce.jpg','description'],
    ['https://static.vecteezy.com/system/resources/previews/002/061/881/original/online-shopping-ads-banner-3d-illustration-with-smartphone-social-media-post-template-vector.jpg', 'description'],
    ['https://image.shutterstock.com/image-illustration/online-mobile-store-concept-3d-260nw-1703909527.jpg', 'description'],
  ];
  //TODO story initialization
  List<CircleStory> circles = [
    CircleStory('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWWE7KyrUZdFgQQR-5pzfFJn5Q0u9sw5WNXg&usqp=CAU', 0),
    CircleStory('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTemwNAtf_se9j3xeaboEVW0uSiQ57mBAfd3w&usqp=CAU',1) ,
    CircleStory('https://www.film.ru/sites/default/files/movies/posters/49667260-1558988.jpg', 2),
    CircleStory('https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/TheNorthFace_logo.svg/1200px-TheNorthFace_logo.svg.png', 3),
  ];

  List<List<Story>> storyData = [
    [
      Story(
        url:'https://static.nike.com/a/images/f_auto/dpr_3.0/w_300,c_limit/222681c7-d43f-46f1-a543-ae96113c8788/%D0%BA%D1%80%D0%BE%D1%81%D1%81%D0%BE%D0%B2%D0%BA%D0%B8-nike-by-you-%D1%81-%D0%B8%D0%BD%D0%B4%D0%B8%D0%B2%D0%B8%D0%B4%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC-%D0%B4%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD%D0%BE%D0%BC.jpg',
        media: MediaType.image,
        duration: const Duration(seconds: 10),
      ),
      Story(
        url: 'https://i.pinimg.com/736x/34/38/e8/3438e8f35308a1426c038005ff526b84.jpg',
        media: MediaType.image,
        duration: const Duration(seconds: 7),
      ),
      Story(
        url:
        'https://static.videezy.com/system/resources/previews/000/005/529/original/Reaviling_Sjusj%C3%B8en_Ski_Senter.mp4',
        media: MediaType.video,
        duration: const Duration(seconds: 0),
      ),
      Story(
        url:'https://images.shafastatic.net/151679153',
        media: MediaType.image,
        duration: const Duration(seconds: 5),
      ),
      Story(
        url:
        'https://static.videezy.com/system/resources/previews/000/007/536/original/rockybeach.mp4',
        media: MediaType.video,
        duration: const Duration(seconds: 0),
      ),
      Story(
        url: 'https://images.shafastatic.net/231344053',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
    ],
    [
      Story(
      url: 'https://intertop.ua/load/CN767/1600x2133/2.jpg',
      media: MediaType.image,
      duration: const Duration(seconds: 8),
    ),
      Story(
        url: 'https://images.asos-media.com/products/sportivnye-shtany-adidas-originals/12448945-1-black?\$n_640w\$&wid=513&fit=constrain',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
      Story(
        url: 'https://images.asos-media.com/products/chernye-dzhoggery-s-manzhetami-i-3d-logotipom-trilistnikomadidas-originals/20445096-1-black?\$n_640w\$&wid=513&fit=constrain',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
    ],
    [Story(
      url: 'https://opt-532231.ssl.1c-bitrix-cdn.ru/upload/resize_cache/iblock/fa6/400_600_1/fa6bb5875d51bc90bc71e5a26e809c29.JPG?160912815217713',
      media: MediaType.image,
      duration: const Duration(seconds: 8),
    ),
      Story(
        url: 'https://st.tsum.com/btrx/i/11/66/86/80//01_434.jpg?u=1610401268',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
      Story(
        url: 'https://images.ua.prom.st/1927602118_w640_h640_muzhskaya-obuv-gucci.jpg',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),],
    [
      Story(
        url: 'https://content1.rozetka.com.ua/goods/images/big/45971971.jpg',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
      Story(
        url: 'https://images.thenorthface.com/is/image/TheNorthFace/NF0A3XEO_UBG_hero?\$638x745\$',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
      Story(
        url: 'https://i.sportisimo.com/products/images/1131/1131325/450x450/the-north-face-m-hmlyn-down-parka-yel_2.jpg',
        media: MediaType.image,
        duration: const Duration(seconds: 8),
      ),
    ]
  ];


  void sortCarts() {
    for(int i = 0; i < allStaff.length; i++) {
      int id = allStaff[i].idOfStaff;
      if (!cartCategories[id].contains(allStaff[i])) {
        cartCategories[id].add(allStaff[i]);
      }
    }
  }


  //TODO for saving and removing staff
  // List<String> getUrl() {
  //   return urlAds;
  // }

  List<CartButton> getLikedThings() {
    return likedThing;
  }

  List<CartButton> getShopThings() {
    return shop;
  }

  int addLiked(int id,List<String> arr, String str, int percent, int cost, int lastCost, bool liked, bool shopThing, List<String> characteristic) {
    likedThing.add(CartButton(idOfStaff: id,images: arr, str: str, percent: percent, cost: cost, lastCost: lastCost, liked: liked, shopThing: shopThing, characteristic: characteristic,));
    return likedThing.length -1;
  }
  void removeLiked(int index) {
      likedThing.removeAt(index);
      notifyListeners();
  }

  int addShop(id, List<String> arr, String str, int percent, int cost, int lastCost, bool liked, bool shopThing, List<String> characteristic) {
    shop.add(CartButton(idOfStaff: id,images: arr, str: str, percent: percent, cost: cost, lastCost: lastCost, liked: liked, shopThing: shopThing, characteristic: characteristic,));
    return shop.length - 1;
  }
  void removeShop(int index) {
    shop.removeAt(index);
    notifyListeners();
  }
}