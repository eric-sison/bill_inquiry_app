// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerInfoImpl _$$CustomerInfoImplFromJson(Map<String, dynamic> json) =>
    _$CustomerInfoImpl(
      account: json['account'] as String? ?? "",
      consumer: json['consumer'] as String? ?? "",
      address: json['address'] as String? ?? "",
      meterNo: json['meterNo'] as String? ?? "",
      checkDigit: json['checkDigit'] as int? ?? -1,
      description: json['description'] as String? ?? "",
      status: json['status'] as String? ?? "",
      averageUsage: json['averageUsage'] as num? ?? -1,
    );

Map<String, dynamic> _$$CustomerInfoImplToJson(_$CustomerInfoImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'consumer': instance.consumer,
      'address': instance.address,
      'meterNo': instance.meterNo,
      'checkDigit': instance.checkDigit,
      'description': instance.description,
      'status': instance.status,
      'averageUsage': instance.averageUsage,
    };
