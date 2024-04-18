import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

@riverpod
class AccountNumber extends _$AccountNumber {
  @override
  String build() => "";

  void updateAccountNumber(String accountNumber) {
    state = accountNumber;
  }
}
