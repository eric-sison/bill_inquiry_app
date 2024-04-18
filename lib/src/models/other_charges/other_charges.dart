import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_charges.freezed.dart';
part 'other_charges.g.dart';

@freezed
class OtherCharges with _$OtherCharges {
  const factory OtherCharges({
    required String remarks,
    required num monthlyDue,
    required num balance,
  }) = _OtherCharges;

  factory OtherCharges.fromJson(Map<String, dynamic> json) => _$OtherChargesFromJson(json);
}
