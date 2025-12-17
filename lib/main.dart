import 'package:e_shop/core/di/dependency_injection.dart';
import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/core/routes/routes.dart';
import 'package:e_shop/core/theme/theme.dart';
import 'package:e_shop/features/auth/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          initialRoute: AppRoutes.onboardingView,
          getPages: appRoutes,
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: OnboardingView(),
        );
      },
    );
  }
}
