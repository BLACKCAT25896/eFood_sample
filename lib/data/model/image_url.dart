import 'dart:convert';

ImageUrl imageUrlFromJson(String str) => ImageUrl.fromJson(json.decode(str));

String imageUrlToJson(ImageUrl data) => json.encode(data.toJson());

class ImageUrl {
  ImageUrl({
    this.restaurantName,
    this.restaurantOpenTime,
    this.restaurantCloseTime,
    this.restaurantLogo,
    this.restaurantAddress,
    this.restaurantPhone,
    this.restaurantEmail,
    this.restaurantLocationCoverage,
    this.minimumOrderValue,
    this.baseUrls,
    this.currencySymbol,
    this.deliveryCharge,
    this.cashOnDelivery,
    this.digitalPayment,
    this.branches,
    this.termsAndConditions,
    this.privacyPolicy,
    this.aboutUs,
  });

  String restaurantName;
  String restaurantOpenTime;
  String restaurantCloseTime;
  String restaurantLogo;
  String restaurantAddress;
  String restaurantPhone;
  String restaurantEmail;
  RestaurantLocationCoverage restaurantLocationCoverage;
  int minimumOrderValue;
  BaseUrls baseUrls;
  String currencySymbol;
  String deliveryCharge;
  String cashOnDelivery;
  String digitalPayment;
  List<Branch> branches;
  String termsAndConditions;
  String privacyPolicy;
  String aboutUs;

  factory ImageUrl.fromJson(Map<String, dynamic> json) => ImageUrl(
        restaurantName: json["restaurant_name"],
        restaurantOpenTime: json["restaurant_open_time"],
        restaurantCloseTime: json["restaurant_close_time"],
        restaurantLogo: json["restaurant_logo"],
        restaurantAddress: json["restaurant_address"],
        restaurantPhone: json["restaurant_phone"],
        restaurantEmail: json["restaurant_email"],
        restaurantLocationCoverage: RestaurantLocationCoverage.fromJson(
            json["restaurant_location_coverage"]),
        minimumOrderValue: json["minimum_order_value"],
        baseUrls: BaseUrls.fromJson(json["base_urls"]),
        currencySymbol: json["currency_symbol"],
        deliveryCharge: json["delivery_charge"],
        cashOnDelivery: json["cash_on_delivery"],
        digitalPayment: json["digital_payment"],
        branches:
            List<Branch>.from(json["branches"].map((x) => Branch.fromJson(x))),
        termsAndConditions: json["terms_and_conditions"],
        privacyPolicy: json["privacy_policy"],
        aboutUs: json["about_us"],
      );

  Map<String, dynamic> toJson() => {
        "restaurant_name": restaurantName,
        "restaurant_open_time": restaurantOpenTime,
        "restaurant_close_time": restaurantCloseTime,
        "restaurant_logo": restaurantLogo,
        "restaurant_address": restaurantAddress,
        "restaurant_phone": restaurantPhone,
        "restaurant_email": restaurantEmail,
        "restaurant_location_coverage": restaurantLocationCoverage.toJson(),
        "minimum_order_value": minimumOrderValue,
        "base_urls": baseUrls.toJson(),
        "currency_symbol": currencySymbol,
        "delivery_charge": deliveryCharge,
        "cash_on_delivery": cashOnDelivery,
        "digital_payment": digitalPayment,
        "branches": List<dynamic>.from(branches.map((x) => x.toJson())),
        "terms_and_conditions": termsAndConditions,
        "privacy_policy": privacyPolicy,
        "about_us": aboutUs,
      };
}

class BaseUrls {
  BaseUrls({
    this.productImageUrl,
    this.customerImageUrl,
    this.bannerImageUrl,
    this.categoryImageUrl,
    this.reviewImageUrl,
    this.notificationImageUrl,
    this.restaurantImageUrl,
    this.deliveryManImageUrl,
    this.chatImageUrl,
  });

  String productImageUrl;
  String customerImageUrl;
  String bannerImageUrl;
  String categoryImageUrl;
  String reviewImageUrl;
  String notificationImageUrl;
  String restaurantImageUrl;
  String deliveryManImageUrl;
  String chatImageUrl;

  factory BaseUrls.fromJson(Map<String, dynamic> json) => BaseUrls(
        productImageUrl: json["product_image_url"],
        customerImageUrl: json["customer_image_url"],
        bannerImageUrl: json["banner_image_url"],
        categoryImageUrl: json["category_image_url"],
        reviewImageUrl: json["review_image_url"],
        notificationImageUrl: json["notification_image_url"],
        restaurantImageUrl: json["restaurant_image_url"],
        deliveryManImageUrl: json["delivery_man_image_url"],
        chatImageUrl: json["chat_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "product_image_url": productImageUrl,
        "customer_image_url": customerImageUrl,
        "banner_image_url": bannerImageUrl,
        "category_image_url": categoryImageUrl,
        "review_image_url": reviewImageUrl,
        "notification_image_url": notificationImageUrl,
        "restaurant_image_url": restaurantImageUrl,
        "delivery_man_image_url": deliveryManImageUrl,
        "chat_image_url": chatImageUrl,
      };
}

class Branch {
  Branch({
    this.id,
    this.name,
    this.email,
    this.longitude,
    this.latitude,
    this.address,
    this.coverage,
  });

  int id;
  String name;
  String email;
  String longitude;
  String latitude;
  String address;
  int coverage;

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        address: json["address"],
        coverage: json["coverage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "longitude": longitude,
        "latitude": latitude,
        "address": address,
        "coverage": coverage,
      };
}

class RestaurantLocationCoverage {
  RestaurantLocationCoverage({
    this.longitude,
    this.latitude,
    this.coverage,
  });

  String longitude;
  String latitude;
  int coverage;

  factory RestaurantLocationCoverage.fromJson(Map<String, dynamic> json) =>
      RestaurantLocationCoverage(
        longitude: json["longitude"],
        latitude: json["latitude"],
        coverage: json["coverage"],
      );

  Map<String, dynamic> toJson() => {
        "longitude": longitude,
        "latitude": latitude,
        "coverage": coverage,
      };
}
