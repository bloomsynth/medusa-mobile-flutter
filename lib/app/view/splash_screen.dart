import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/app/router/app_router.dart';
import 'package:medusa_mobile/theme/app_colors.dart';
import 'package:medusa_mobile/theme/app_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 300), () {
      if (mounted) context.go(AppRoutes.home);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: colors.primary,
        body: Center(
          child: Text(
            'MEDUSA\nMOBILE',
            textAlign: TextAlign.center,
            style: displayTextStyle(
              context,
              fontSize: 48,
            ).copyWith(color: colors.contentSecondary),
          ),
        ),
      ),
    );
  }
}
