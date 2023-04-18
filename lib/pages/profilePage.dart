import 'package:flutter/material.dart';
import '../widgets/infoCard.dart';
import '../widgets/nav_bar_widget.dart';

const email = "johndoe@gmail.com";
const phone = "90441539202";

class ProfilClient extends StatelessWidget {
  const ProfilClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF175F30),
      bottomNavigationBar: NavBarWidget(index: 2),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundColor: Color(0xFF175F30),
              radius: 60,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              onPressed: (() {
                Navigator.pushNamed(context, '/login');
              }),
              child: const Text("Se deconnecter"),
            ),
          ],
        ),
      ),
    );
  }
}
