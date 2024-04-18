// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingInfoImpl _$$BillingInfoImplFromJson(Map<String, dynamic> json) =>
    _$BillingInfoImpl(
      waterBill: json['waterBill'] as num? ?? -1,
      dueDate: json['dueDate'] as String? ?? "",
      seniorDiscount: json['seniorDiscount'] as num? ?? -1,
      advancePayment: json['advancePayment'] as num? ?? -1,
      penalty: json['penalty'] as num? ?? -1,
      other: (json['other'] as List<dynamic>?)
              ?.map((e) => OtherCharges.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: json['total'] as num? ?? -1,
    );

Map<String, dynamic> _$$BillingInfoImplToJson(_$BillingInfoImpl instance) =>
    <String, dynamic>{
      'waterBill': instance.waterBill,
      'dueDate': instance.dueDate,
      'seniorDiscount': instance.seniorDiscount,
      'advancePayment': instance.advancePayment,
      'penalty': instance.penalty,
      'other': instance.other,
      'total': instance.total,
    };
