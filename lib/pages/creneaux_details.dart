import 'package:fee_bus/widgets/header_text_widget.dart';
import 'package:fee_bus/widgets/header_widget.dart';
import 'package:fee_bus/widgets/nav_bar_widget.dart';
import 'package:fee_bus/widgets/page_title_widget.dart';
import 'package:fee_bus/widgets/rounded_header_image_widget.dart';
import 'package:flutter/material.dart';

class CrenauxDetail extends StatelessWidget {
  const CrenauxDetail({super.key});

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
                      color: Color(0xFF175F30),
                      width: double.infinity,
                      height: 200,
                    ),
                    Positioned(top: 150, child: profileImageWidget()),
                    Positioned(child: textWidget()),
                  ],
                ),
                titleWidget(),
                crenauxInfosWidget(),
                const NavBarWidget()
              ],
            ),
          ],
        ),
      ),
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
      text: 'Itineraire : Université de Yaoundé I - Yaoundé',
      textAlign: TextAlign.center,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );

Widget titleWidget() => const PageTitleWidget(
      margin: EdgeInsets.only(top: 70),
      text: 'Lundi 12 Avril 2021',
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );

Widget crenauxInfosWidget() => Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.directions, color: Colors.grey[600]),
                SizedBox(height: 10),
                Icon(Icons.date_range, color: Colors.grey[600]),
                SizedBox(height: 10),
                Icon(Icons.access_time, color: Colors.grey[600]),
                SizedBox(height: 10),
                Icon(Icons.payments_outlined, color: Colors.grey[600]),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Université de Yaoundé I - Yaoundé',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 15),
                Text('Lundi 12 Avril 2021',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 15),
                Text('10:00 - 12:00',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 15),
                Text('2000 FCFA',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 66, 66),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        // create a button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF175F30),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          child: const Text('Acheter'),
        ),
        // separator
        const SizedBox(height: 20),
        const Divider(
          color: Colors.grey,
          height: 20,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(height: 8),
        const Icon(Icons.info_outline, color: Colors.red),
        const SizedBox(height: 8),
        const Text(
            'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam luctus, nunc nisl aliquam nisl, eget aliquam nisl nunc eget nisl. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 66, 66, 66),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
      ],
    ));
