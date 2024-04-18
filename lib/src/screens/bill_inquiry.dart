import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:cw_bill_inquiry_v2/src/providers/bt_printer_provider/bt_printer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/account_textfield.dart';
import '../widgets/background_gradient.dart';
import '../widgets/header_title.dart';
import '../widgets/inquire_button.dart';

class BillInquiry extends ConsumerStatefulWidget {
  const BillInquiry({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _BillInquiry();
  }
}

class _BillInquiry extends ConsumerState<BillInquiry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned(
              top: 200.0,
              child: BackgroundGradient(),
            ),
            BlurryContainer(
              blur: 100.0,
              elevation: 0.0,
              child: Container(),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: IconButton(
                      iconSize: 30,
                      icon: const Icon(Icons.print),
                      onPressed: () {
                        ref.read(bluetoothPrinterProvider.notifier).selectDevice(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 100.0,
                  ),
                  child: Column(
                    children: [
                      const HeaderTitle(
                        title: 'Bill Inquiry',
                        subtitle: 'Enter your 7-digit account number to view your current \nbilling details.',
                      ),
                      const SizedBox(height: 55.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Column(
                          children: [
                            AccountTextField(),
                            SizedBox(height: 45.0),
                            InquireButton(),
                            // SizedBox(height: 20.0),
                            // Text(
                            //   '${ref.watch(billingProvider)}',
                            //   style: const TextStyle(color: Colors.white),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
