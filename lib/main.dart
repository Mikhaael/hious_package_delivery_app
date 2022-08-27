import 'package:flutter/material.dart';
import 'package:hious_package_delivery_app/utils/designs/colors.dart';
import 'package:hious_package_delivery_app/utils/designs/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const HiouPackageDeliveryApp());
}

class HiouPackageDeliveryApp extends StatelessWidget {
  const HiouPackageDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: kPrimaryColor,
            secondary: kButtonBackgroundColor,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(
              displayColor: kTextColor1,
              bodyColor: kTextColor1,
            ).copyWith(button: GoogleFonts.poppins(),),
          ),
        ),
        routes: Routes.routes,
      ),
    );
  }
}