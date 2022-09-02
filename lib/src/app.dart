import 'package:charity_finder/src/components/components_list_view.dart';
import 'package:charity_finder/src/components/pages/button_detail_page.dart';
import 'package:charity_finder/src/components/pages/large_image_text_page.dart';
import 'package:charity_finder/src/components/pages/image_text_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',

          debugShowCheckedModeBanner: false,

          localizationsDelegates: const [
            // AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          theme: ThemeData(
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);

                  case ButtonDetailPage.routeName:
                    return const ButtonDetailPage();

                  case LargeImageTextPage.routeName:
                    return const LargeImageTextPage();

                  case ImageTextPage.routeName:
                    return const ImageTextPage();

                  case ComponentsListView.routeName:
                  default:
                    return const ComponentsListView();
                }
              },
            );
          },
        );
      },
    );
  }
}
