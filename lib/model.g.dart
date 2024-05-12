// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      distanceFromHome: (json['distanceFromHome'] as num?)?.toDouble(),
      distanceFroLastTransaction:
          (json['distanceFroLastTransaction'] as num?)?.toDouble(),
      ratio: (json['ratio'] as num?)?.toDouble(),
      retailer: json['retailer'] as String?,
      usedChip: json['usedChip'] as String?,
      usedPin: json['usedPin'] as String?,
      online: json['online'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'distanceFromHome': instance.distanceFromHome,
      'distanceFroLastTransaction': instance.distanceFroLastTransaction,
      'ratio': instance.ratio,
      'retailer': instance.retailer,
      'usedChip': instance.usedChip,
      'usedPin': instance.usedPin,
      'online': instance.online,
    };
