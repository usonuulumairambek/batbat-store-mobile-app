import 'package:flutter/cupertino.dart';
import '../../widget/card_button.dart';

class AllData extends ChangeNotifier {

  List<CartButton> likedThing = [];
  List<CartButton> shop = [];
  List<CartButton> allStaff = [
    CartButton(0,'Худи', 10, 2000, 0),
    CartButton(1,'Air force 1', 10, 2000, 0),
    CartButton(0,'Худи', 10, 2000, 0),
    CartButton(1,'Air force 1', 10, 2000, 0),
  ];

  List<String> urlAds = [
    'https://image.shutterstock.com/image-vector/sale-poster-3d-pastel-illustration-600w-1838372179.jpg',
    'https://image.shutterstock.com/image-vector/online-delivery-service-concept-order-600w-1505134385.jpg',
    'https://image.shutterstock.com/image-photo/love-holiday-sales-shop-retail-600w-1702302571.jpg'
  ];
  List<String> hotUrl = [
    'https://adparlor.com/wp-content/uploads/2020/06/20AP_LatestShoppableAds2.jpg',
    'https://static.doofinder.com/main-files/uploads/2018/08/facebook-ads-ecommerce.jpg',
    'https://static.vecteezy.com/system/resources/previews/002/061/881/original/online-shopping-ads-banner-3d-illustration-with-smartphone-social-media-post-template-vector.jpg',
    'https://image.shutterstock.com/image-illustration/online-mobile-store-concept-3d-260nw-1703909527.jpg',
  ];
  List<List<String>> images = [
    ['https://kosmo-shop.com/25232/khudi-offline.jpg',
    'https://cdn1.ozone.ru/s3/multimedia-e/c1200/6041587538.jpg',
    'https://images.wbstatic.net/big/new/12970000/12977970-1.jpg',
    'https://imgcdn.loverepublic.ru/upload/images/11521/thumb/600_9999/1152120340_41.jpg',],
    ['https://www.thenextsole.com/storage/images/DM8461-001.png',
      'https://sneakerfreak.ru/wp-content/uploads/2021/08/Undefeated-Nike-Air-Force-1-5-On-It-DM8461-001-Release-Date-2-scaled.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxZM2XG-um82hjUDqNRZaHuj1oIwYL69Kvo6XQLNNoIMjRqkVCfQLbKSoZC-pHaC6RmM4&usqp=CAU',
      'https://sneakernews.com/wp-content/uploads/2021/07/undefeated-nike-air-force-1-low-grey-blue-red-1.jpg',],
  ];

  //TODO for saving and removing staff
  List<String> getUrl() {
    return urlAds;
  }

  List<CartButton> getLikedThings() {
    return likedThing;
  }

  List<CartButton> getShopThings() {
    return shop;
  }

  int addLiked(int indexDress, String str, int percent, int cost, int lastCost, bool liked, bool shopThing) {
    likedThing.add(CartButton(indexDress, str, percent, cost, lastCost));
    return likedThing.length -1;
  }
  void removeLiked(int index) {
      likedThing.removeAt(index);
      notifyListeners();
  }

  int addShop(int indexDress, String str, int percent, int cost, int lastCost, bool liked, bool shopThing) {
    shop.add(CartButton(indexDress, str, percent, cost, lastCost));
    return shop.length - 1;
  }
  void removeShop(int index) {
    shop.removeAt(index);
    notifyListeners();
  }
}