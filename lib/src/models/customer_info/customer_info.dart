import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_info.freezed.dart';
part 'customer_info.g.dart';

@freezed
class CustomerInfo with _$CustomerInfo {
  const factory CustomerInfo({
    @Default("") String account,
    @Default("") String consumer,
    @Default("") String address,
    @Default("") String meterNo,
    @Default(-1) int checkDigit,
    @Default("") String description,
    @Default("") String status,
    @Default(-1) num averageUsage,
  }) = _CustomerInfo;

  factory CustomerInfo.fromJson(Map<String, dynamic> json) => _$CustomerInfoFromJson(json);
}
