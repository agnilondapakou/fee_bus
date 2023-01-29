import 'package:fee_bus/pages/crenaux_liste.dart';
import 'package:flutter/material.dart';

import '../pages/loadingPage.dart';

class RouterManager {
  static const String loadingPage = '/';
  static const String crenauxListe = '/crenauxListe';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return MaterialPageRoute(builder: (context) => const LoadingPage());
      case crenauxListe:
        return MaterialPageRoute(builder: (context) => const CrenauxListe());
      default:
        throw Exception('Route not found');
    }
  }
}
