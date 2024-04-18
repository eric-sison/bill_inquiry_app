import 'package:flutter/cupertino.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bt_printer_provider.g.dart';

@Riverpod(keepAlive: true)
class BluetoothPrinter extends _$BluetoothPrinter {
  @override
  FutureOr<BluetoothDevice> build() async {
    return BluetoothDevice(address: "");
  }

  void selectDevice(BuildContext context) async {
    state = const AsyncValue.loading();

    final device = await FlutterBluetoothPrinter.selectDevice(context);

    if (device != null) {
      state = AsyncValue.data(device);
    }
  }
}
