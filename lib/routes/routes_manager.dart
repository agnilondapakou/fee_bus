import 'package:fee_bus/pages/crenaux_liste.dart';
import 'package:fee_bus/pages/historiqueProfil.dart';
import 'package:fee_bus/pages/profilePage.dart';
import 'package:flutter/material.dart';

import '../pages/loadingPage.dart';

class RouterManager {
  static const String loadingPage = '/';
  static const String crenauxListe = '/crenaux.liste';
  static const String myCreneaux = '/my.crenaux';
  static const String profile = '/profile';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return MaterialPageRoute(
          builder: (context) => const LoadingPage(),
        );
      case crenauxListe:
        return MaterialPageRoute(
          builder: (context) => const CrenauxListe(),
        );
      case myCreneaux:
        return MaterialPageRoute(
          builder: (context) => const HistoriqueProfil(),
        );
      case profile:
        return MaterialPageRoute(
          builder: (context) => const ProfilClient(),
        );
      default:
        throw Exception('Route not found');
    }
  }
}
