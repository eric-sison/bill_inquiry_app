import 'package:cw_bill_inquiry_v2/src/providers/account_provider/account_provider.dart';
import 'package:cw_bill_inquiry_v2/src/providers/billing_provider/billing_provider.dart';
import 'package:cw_bill_inquiry_v2/src/screens/bill_inquiry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer_library.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrintingProgressDialog extends ConsumerStatefulWidget {
  final String device;
  final ReceiptController controller;

  const PrintingProgressDialog({
    super.key,
    required this.device,
    required this.controller,
  });

  @override
  ConsumerState<PrintingProgressDialog> createState() => _PrintingProgressDialogState();

  static void print(
    BuildContext context, {
    required String device,
    required ReceiptController controller,
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PrintingProgressDialog(
        controller: controller,
        device: device,
      ),
    );
  }
}

class _PrintingProgressDialogState extends ConsumerState<PrintingProgressDialog> {
  double? progress;

  @override
  void initState() {
    super.initState();
    widget.controller.print(
      address: widget.device,
      addFeeds: 5,
      keepConnected: true,
      onProgress: (total, sent) {
        if (mounted) {
          setState(() {
            progress = sent / total;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Printing Receipt',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade200,
            ),
            const SizedBox(height: 4),
            Text('Processing: ${((progress ?? 0) * 100).round()}%'),
            if (((progress ?? 0) * 100).round() == 100) ...[
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(accountNumberProvider);
                  ref.invalidate(billingProvider);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BillInquiry()));
                },
                child: const Text('Done'),
              )
            ]
          ],
        ),
      ),
    );
  }
}
