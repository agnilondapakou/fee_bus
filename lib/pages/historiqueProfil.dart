import 'package:flutter/material.dart';
import 'package:fee_bus/widgets/crenaux_widget.dart';
import 'package:fee_bus/widgets/header_widget.dart';
import 'package:fee_bus/widgets/nav_bar_widget.dart';
import 'package:fee_bus/widgets/page_title_widget.dart';
import '../widgets/header_text_widget.dart';
import '../widgets/rounded_header_image_widget.dart';

class HistoriqueProfil extends StatelessWidget {
  const HistoriqueProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    const HeaderWidget(
                      color: Color(0xFF0A4903),
                      width: double.infinity,
                      height: 200,
                    ),
                    Positioned(top: 150, child: profileImageWidget()),
                    Positioned(child: textWidget()),
                  ],
                ),
                titleWidget(),
                crenauxListeWidget(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}

Widget profileImageWidget() => const RoundedHeaderWidget(
      width: 100,
      height: 100,
      color: Color(0xFF175F30),
      image: Image(
        image: AssetImage('assets/images/logo.png'),
      ),
    );

Widget textWidget() => const HeaderTextWidget(
      margin: EdgeInsets.all(25),
      text: 'Votre historique',
      textAlign: TextAlign.center,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
    );

Widget titleWidget() => const PageTitleWidget(
      margin: EdgeInsets.only(top: 70),
      text: 'Historique',
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );

Widget crenauxListeWidget() => Container(
    margin: const EdgeInsets.only(top: 10),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // create an loop to generate the list of crenaux

        for (var i = 0; i < 10; i++) ...[
          const CrenauxWidget(
              itineraire: 'LBS - Agbalepedo',
              heure: '9h - 10h',
              date: '12/12/2021',
              bus: 'Bus 33',
              prix: '700 FCFA',
              statut: 'acheté'),
        ],
      ],
    ));
