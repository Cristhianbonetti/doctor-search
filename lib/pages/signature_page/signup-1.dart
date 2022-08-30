import 'package:doctor_search/constants.dart';
import 'package:doctor_search/pages/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        foregroundColor: kSecomdaryColor,
        title: const Text(
          'Vamos Começar',
        ),
        actions: [
          Image.asset(
            "assets/images/logo1.png",
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nome Completo',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'joão da silva',
                prefixIcon: Icon(
                  Icons.person,
                  color: kSecomdaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Data de Nascimento',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'DD/MM/YYYY',
                prefixIcon: Icon(
                  Icons.calendar_month,
                  color: kSecomdaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Gênero',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Selecionar',
                prefixIcon: Icon(
                  Icons.person,
                  color: kSecomdaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'E-mail',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'name@exemplo.com.br',
                prefixIcon: Icon(
                  Icons.email,
                  color: kSecomdaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Telêfone',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '(31) 99999-9999',
                prefixIcon: Icon(
                  Icons.phone,
                  color: kSecomdaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login-page');
                },
                style: TextButton.styleFrom(
                  backgroundColor: kSecomdaryColor,
                  elevation: 10,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(142, 8, 142, 8),
                  child: Text(
                    'Continuar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
