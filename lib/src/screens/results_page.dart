import 'package:barcode_widget/barcode_widget.dart';
import 'package:cw_bill_inquiry_v2/src/constants/color_theme.dart';
import 'package:cw_bill_inquiry_v2/src/providers/billing_provider/billing_provider.dart';
import 'package:cw_bill_inquiry_v2/src/providers/bt_printer_provider/bt_printer_provider.dart';
import 'package:cw_bill_inquiry_v2/src/utils/capitalize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/printing_progress_dialog.dart';

class ResultsPage extends ConsumerStatefulWidget {
  const ResultsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ResultsPage();
  }
}

class _ResultsPage extends ConsumerState<ResultsPage> {
  ReceiptController? _receiptController;
  double? progress;

  double? calculateTotalOtherCharges() {
    double? sum = ref.read(billingProvider).value?.billing.other.fold(0, (sum, due) => sum! + due.monthlyDue);

    return sum;
  }

  @override
  Widget build(BuildContext context) {
    String address = ref.read(bluetoothPrinterProvider).value?.address ?? "";

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Receipt(
                backgroundColor: kZinc900,
                onInitialized: (controller) {
                  setState(() {
                    _receiptController = controller;
                  });
                },
                builder: (context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "lib/images/gscwd_logo.png",
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(width: 10.0),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "GENERAL SANTOS CITY \nWATER DISTRICT",
                                style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.01, wordSpacing: -7),
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                "(083) 552-3824; 301-0542",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  letterSpacing: 0.01,
                                  wordSpacing: -7,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ref.watch(billingProvider).value?.info.consumer}",
                            style: const TextStyle(fontWeight: FontWeight.w700, wordSpacing: -12, letterSpacing: 0.001),
                          ),
                          Text(
                            "${ref.read(billingProvider).value?.info.address}".toLowerCase().toTitleCase(),
                            style: const TextStyle(fontSize: 20.0, letterSpacing: -0.75, wordSpacing: -8),
                          ),
                        ],
                      ),
                      const Divider(thickness: 2),
                      Table(
                        columnWidths: const {
                          1: IntrinsicColumnWidth(),
                        },
                        children: [
                          TableRow(
                            children: [
                              const Text(
                                'Account No.:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.info.account}-${ref.read(billingProvider).value?.info.checkDigit}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Classification:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.info.description}'.toLowerCase().toTitleCase(),
                                textAlign: TextAlign.end,
                                style: const TextStyle(letterSpacing: -1),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Meter No.:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.info.meterNo}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Average Usage:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.info.averageUsage}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(thickness: 2),
                      Table(
                        columnWidths: const {
                          1: IntrinsicColumnWidth(),
                        },
                        children: [
                          TableRow(
                            children: [
                              const Text(
                                'Due Date:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.billing.dueDate}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Water Bill:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.billing.waterBill}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Senior Discount:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.billing.seniorDiscount}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Advance Payment:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.billing.advancePayment}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Penalty:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${ref.read(billingProvider).value?.billing.penalty}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const Text(
                                'Other Charges:',
                                style: TextStyle(letterSpacing: -1),
                              ),
                              Text(
                                '${calculateTotalOtherCharges()}',
                                style: const TextStyle(letterSpacing: -1),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        "TOTAL ${calculateTotalOtherCharges()! + ref.read(billingProvider).value!.billing.total}",
                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 40.0),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30.0),
                      BarcodeWidget(
                        data:
                            '${ref.read(billingProvider).value?.info.account}-${ref.read(billingProvider).value?.info.checkDigit}',
                        barcode: Barcode.code39(),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: address.isEmpty
                  ? null
                  : () {
                      PrintingProgressDialog.print(
                        context,
                        device: address,
                        controller: _receiptController!,
                      );
                      // _receiptController?.print(
                      //   address: address,
                      //   addFeeds: 5,
                      //   keepConnected: true,
                      //   onProgress: (total, sent) {
                      //     if (mounted) {
                      //       setState(() {
                      //         progress = sent / total;
                      //       });
                      //     }
                      //   },
                      // );
                    },
              child: const Text("PRINT"),
            ),
          ],
        ),
      ),
    );
  }
}
