import 'package:freezed_annotation/freezed_annotation.dart';

import '../other_charges/other_charges.dart';

part 'billing_info.freezed.dart';
part 'billing_info.g.dart';

@freezed
class BillingInfo with _$BillingInfo {
  const factory BillingInfo({
    @Default(-1) num waterBill,
    @Default("") String dueDate,
    @Default(-1) num seniorDiscount,
    @Default(-1) num advancePayment,
    @Default(-1) num penalty,
    @Default([]) List<OtherCharges> other,
    @Default(-1) num total,
  }) = _BillingInfo;

  factory BillingInfo.fromJson(Map<String, dynamic> json) => _$BillingInfoFromJson(json);
}
