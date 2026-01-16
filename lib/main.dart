import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnal_app/app/routes/app_pages.dart';
import 'app/modules/login/bindings/login_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jurnal Smekta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialBinding: LoginBinding(),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
