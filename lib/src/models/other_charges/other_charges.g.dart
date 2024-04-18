// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_charges.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherChargesImpl _$$OtherChargesImplFromJson(Map<String, dynamic> json) =>
    _$OtherChargesImpl(
      remarks: json['remarks'] as String,
      monthlyDue: json['monthlyDue'] as num,
      balance: json['balance'] as num,
    );

Map<String, dynamic> _$$OtherChargesImplToJson(_$OtherChargesImpl instance) =>
    <String, dynamic>{
      'remarks': instance.remarks,
      'monthlyDue': instance.monthlyDue,
      'balance': instance.balance,
    };
