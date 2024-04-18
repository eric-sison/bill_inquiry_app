// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillDetailsImpl _$$BillDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BillDetailsImpl(
      info: CustomerInfo.fromJson(json['info'] as Map<String, dynamic>),
      billing: BillingInfo.fromJson(json['billing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BillDetailsImplToJson(_$BillDetailsImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'billing': instance.billing,
    };
