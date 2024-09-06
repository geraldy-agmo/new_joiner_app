import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/bottom_navigation.dart';
import 'package:flutter_new_joiner_app/app/core/theme/theme.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_view_model.dart';
import 'package:flutter_new_joiner_app/app/view_models/package_details_view_model.dart';
import 'package:flutter_new_joiner_app/app/view_models/search_package_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchPackageViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => PackageDetailsViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteViewModel(),
        ),
      ],
      child: const App(),
    ),
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
