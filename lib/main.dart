import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/bottom_navigation.dart';
import 'package:flutter_new_joiner_app/app/core/theme/theme.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: App()),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: const BottomNavigation(),
    );
  }
}
