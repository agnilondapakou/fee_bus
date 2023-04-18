import 'package:fee_bus/widgets/header_text_widget.dart';
import 'package:fee_bus/widgets/header_widget.dart';
import 'package:fee_bus/widgets/nav_bar_widget.dart';
import 'package:fee_bus/widgets/rounded_header_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      home: Scaffold(
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
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
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
                          offset:
                              const Offset(0, 3), // changes position of shadow
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
                                const SizedBox(height: 10),
                                Icon(Icons.date_range, color: Colors.grey[600]),
                                const SizedBox(height: 10),
                                Icon(Icons.access_time,
                                    color: Colors.grey[600]),
                                const SizedBox(height: 10),
                                Icon(Icons.payments_outlined,
                                    color: Colors.grey[600]),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text('Université de Yaoundé I - Yaoundé',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 66, 66, 66),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const SizedBox(height: 15),
                                const Text('Lundi 12 Avril 2021',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 66, 66, 66),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const SizedBox(height: 15),
                                const Text('10:00 - 12:00',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 66, 66, 66),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                                const SizedBox(height: 15),
                                const Text('2000 FCFA',
                                    style: TextStyle(
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            EasyLoading.show(status: 'loading...');

                            EasyLoading.showProgress(0.3,
                                status: 'downloading...');

                            EasyLoading.showSuccess('Great Success!');

                            EasyLoading.showError('Failed with Error');

                            EasyLoading.showInfo('Useful Information.');

                            EasyLoading.showToast('Paiement...');

                            EasyLoading.dismiss();
                          },
                          child: const Text('Flooz'),
                        ),
                        const SizedBox(height: 20),
                        // create a button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF175F30),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            EasyLoading.show(status: 'loading...');

                            EasyLoading.showProgress(0.3,
                                status: 'downloading...');

                            EasyLoading.showSuccess('Great Success!');

                            EasyLoading.showError('Failed with Error');

                            EasyLoading.showInfo('Useful Information.');

                            EasyLoading.showToast('Paiement...');

                            EasyLoading.dismiss();
                          },
                          child: const Text('T-money'),
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBarWidget(index: 1),
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
      text: 'Choisissez votre moyen de paiement',
      textAlign: TextAlign.center,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    );
