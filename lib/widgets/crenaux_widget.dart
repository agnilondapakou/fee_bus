import 'package:fee_bus/pages/creneaux_details.dart';
import 'package:flutter/material.dart';

class CrenauxWidget extends StatelessWidget {
  final String? itineraire;
  final String? heure;
  final String? date;
  final String? bus;
  final String? prix;
  const CrenauxWidget(
      {Key? key, this.itineraire, this.heure, this.date, this.bus, this.prix, required String statut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CrenauxDetail(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 183, 183, 183),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFF175F30),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // add road icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.date_range,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '$date',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
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
                          const SizedBox(
                            width: 10,
                          ),
                          Text('$heure',
                              style: const TextStyle(
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
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
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
                      Text(
                        '$itineraire',
                        style: const TextStyle(
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
                      Text('$bus',
                          style: const TextStyle(
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
                      Text('$prix',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 53, 53, 53),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
