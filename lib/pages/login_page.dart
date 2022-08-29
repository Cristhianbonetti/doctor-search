import 'package:doctor_search/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool aceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        foregroundColor: kSecomdaryColor,
        title: const Text(
          'Voltar',
        ),
        actions: [
          Image.asset(
            "assets/images/logo1.png",
          )
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 400,
                height: 150,
                child: Image.asset(
                  "assets/images/logo1.png",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                child: const Text(
                  'Olá! Faça login para continuar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: kSecomdaryColor,
                      fontFamily: 'Arial'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(
                    icon: Icon(
                  Icons.person,
                  color: kSecomdaryColor,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: kSecomdaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: kSecomdaryColor,
                    value: aceptTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        aceptTerms = value!;
                      });
                    },
                  ),
                  const Text(
                    'Lembrar minha senha',
                    style:
                        TextStyle(color: kSecomdaryColor, fontFamily: 'Arial'),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/signup');
                    },
                    style: TextButton.styleFrom(),
                    child: const Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                        color: kSecomdaryColor,
                        fontFamily: 'Arial',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
                    padding: EdgeInsets.fromLTRB(150, 8, 150, 8),
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Row(
                  children: [
                    const Text('Novo no Doctor Search?'),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Cadastre-se',
                        style: TextStyle(
                          color: kSecomdaryColor,
                          fontFamily: 'Arial',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
