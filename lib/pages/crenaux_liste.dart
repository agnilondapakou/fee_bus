import 'package:flutter/material.dart';

class CrenauxListe extends StatelessWidget {
  const CrenauxListe({super.key});

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
                    headerWidget(),
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
    );
  }
}

Widget headerWidget() => Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: Color(0xFF175F30),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );

Widget profileImageWidget() => Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFF175F30),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );

Widget textWidget() => Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      child: const Center(
        child: Text(
          'Fee Bus, votre application de réservation de crenaux',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );

Widget titleWidget() => Container(
      margin: const EdgeInsets.only(top: 70),
      child: const Center(
        child: Text(
          'Crenaux',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget crenauxListeWidget() => Container(
    margin: const EdgeInsets.only(top: 10),
    child: SingleChildScrollView(
      child: Column(
        children: [
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
          crenauxWidget(),
        ],
      ),
    ));

Widget crenauxWidget() => Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              // give an shadow to the container
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 42, 42, 42),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // add road icon
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.directions,
                      color: Color.fromARGB(255, 148, 148, 148),
                    ),
                    const Text(
                      'UL - Adetikope',
                      style: TextStyle(
                        color: Color.fromARGB(255, 53, 53, 53),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.directions_bus,
                      color: Color.fromARGB(255, 148, 148, 148),
                    ),
                    const Text('Bus 0065',
                        style: TextStyle(
                          color: Color.fromARGB(255, 53, 53, 53),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                // fee icon
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.attach_money,
                      color: Color.fromARGB(255, 148, 148, 148),
                    ),
                    const Text('500 FCFA',
                        style: TextStyle(
                          color: Color.fromARGB(255, 53, 53, 53),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF175F30),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // add road icon
                Row(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.date_range,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Lundi 15 Juillet 2021',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // fee icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.timer,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text('15h00 - 16h00',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
