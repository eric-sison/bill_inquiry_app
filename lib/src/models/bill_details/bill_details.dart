import 'package:freezed_annotation/freezed_annotation.dart';

import '../billing_info/billing_info.dart';
import '../customer_info/customer_info.dart';

part 'bill_details.freezed.dart';
part 'bill_details.g.dart';

@freezed
class BillDetails with _$BillDetails {
  const factory BillDetails({
    required CustomerInfo info,
    required BillingInfo billing,
  }) = _BillDetails;

  factory BillDetails.fromJson(Map<String, dynamic> json) => _$BillDetailsFromJson(json);
}
