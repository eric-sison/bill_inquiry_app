import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_theme.dart';
import '../providers/account_provider/account_provider.dart';
import '../utils/account_number_formatter.dart';

class AccountTextField extends ConsumerStatefulWidget {
  const AccountTextField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _AccountTextField();
  }
}

class _AccountTextField extends ConsumerState<AccountTextField> {
  late TextEditingController textController;
  late FocusNode focusNode;

  @override
  void initState() {
    textController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      focusNode: focusNode,
      onChanged: (val) {
        ref.watch(accountNumberProvider.notifier).updateAccountNumber(val);
      },
      keyboardType: TextInputType.number,
      autofocus: true,
      cursorColor: kZinc600,
      inputFormatters: [
        LengthLimitingTextInputFormatter(7),
        FilteringTextInputFormatter.digitsOnly,
        AccountNumberFormatter(sample: "xxxxxx-x", separator: '-'),
      ],
      decoration: InputDecoration(
        enabled: true,
        hintText: "xxxxxxx-x",
        hintStyle: GoogleFonts.inter(
          color: kZinc500,
          fontWeight: FontWeight.w600,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kBlue600),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kZinc700),
        ),
      ),
      style: GoogleFonts.inter(
        fontSize: 45.0,
        letterSpacing: 10.0,
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
