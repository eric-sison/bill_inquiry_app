import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/bill_details/bill_details.dart';
import '../../models/billing_info/billing_info.dart';
import '../../models/customer_info/customer_info.dart';
import '../../screens/results_page.dart';
import '../dio_provider/dio_provider.dart';

part 'billing_provider.g.dart';

@Riverpod(keepAlive: true)
class Billing extends _$Billing {
  Future<BillDetails> _fetchBillDetails(String account, String digit) async {
    try {
      final dio = ref.read(dioProvider);

      final res = await dio.get("http://172.20.110.60:3276/v1/consumers/$account?digit=$digit");

      // test route at home
      //final res = await dio.get("http://192.168.1.42:3276/v1/consumers/$account?digit=$digit");

      //print(res.data);

      return BillDetails.fromJson(res.data);
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  @override
  FutureOr<BillDetails> build() async {
    return const BillDetails(
      info: CustomerInfo(),
      billing: BillingInfo(),
    );
  }

  void inquireBill(String account, BuildContext context) async {
    state = const AsyncValue.loading();

    List<String> params = account.split('-');

    try {
      final billingDetails = await _fetchBillDetails(params[0], params[1]);
      state = AsyncValue.data(billingDetails);
      if (context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ResultsPage(),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text('Not Found!'),
            content: Text('Make sure you entered the correct account number!'),
          ),
        );
      }
    }
  }
}
