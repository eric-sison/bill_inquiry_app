import 'package:cw_bill_inquiry_v2/src/providers/billing_provider/billing_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/color_theme.dart';
import '../providers/account_provider/account_provider.dart';

class InquireButton extends ConsumerStatefulWidget {
  const InquireButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _InquireButton();
  }
}

class _InquireButton extends ConsumerState<InquireButton> {
  @override
  Widget build(BuildContext context) {
    final accountNo = ref.watch(accountNumberProvider);

    return ElevatedButton(
      onPressed: accountNo.isEmpty || accountNo.length < 8
          ? null
          : () {
              ref.read(billingProvider.notifier).inquireBill(accountNo, context);
            },
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery.of(context).size.width, 55.0),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color.fromRGBO(63, 63, 70, 0.25);
            }
            return kBlue700;
          },
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      child: const Text(
        'View Details',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    );
  }
}
