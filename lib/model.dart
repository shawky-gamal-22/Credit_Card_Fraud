import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable()

class User {
  double? distanceFromHome;
  double? distanceFroLastTransaction;
  double? ratio;
  String? retailer;
  String? usedChip;
  String? usedPin;
  String? online;

   User({this.distanceFromHome, this.distanceFroLastTransaction, this.ratio, this.retailer, this.usedChip,
     this.usedPin, this.online});
  factory User.fromJson(Map<String, dynamic> json) => User(distanceFromHome: json["distance_from_home"],
    distanceFroLastTransaction: json["distance_from_last_transaction"],
    ratio: json["ratio_to_median_purchase_price"],
    retailer: json["repeat_retailer"],
    usedChip: json["used_chip"],
    usedPin: json["used_pin_number"],
    online: json["online_order"],
  );

  Map<String, dynamic> toJson() => {
  "distance_from_home": distanceFromHome,
    "distance_from_last_transaction":distanceFroLastTransaction,
    "ratio_to_median_purchase_price": ratio,
    "repeat_retailer": retailer,
    "used_chip":usedChip,
    "used_pin_number": usedPin,
    "online_order":online
  };

}