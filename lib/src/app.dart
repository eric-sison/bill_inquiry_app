import 'package:cw_bill_inquiry_v2/src/screens/bill_inquiry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/color_theme.dart';

// final GoRouter _router = GoRouter(routes: [
//   GoRoute(path: '/', builder: (context, _) => const BillInquiry()),
//   GoRoute(path: '/results_page', builder: (context, _) => const ResultsPage()),
// ]);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bill Inquiry',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: kZinc900,
        colorScheme: ColorScheme.fromSeed(seedColor: kBlue600),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      //routerConfig: _router,
      home: const BillInquiry(),
      //home: const BillInquiry(),
    );
  }
}
