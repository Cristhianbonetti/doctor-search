import 'package:brasil_fields/brasil_fields.dart';
import 'package:doctor_search/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignupTwo extends StatelessWidget {
  SignupTwo({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();

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
                'CPF',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 16, color: kSecomdaryColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CpfInputFormatter()
                      ],
                      decoration: const InputDecoration(
                        hintText: '111.111.111-11',
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
                        'Documento de Identidade',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 16,
                            color: kSecomdaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: '11.11.111.11',
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
                        'Órgão emissor',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 16,
                            color: kSecomdaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'SSP',
                        prefixIcon: Icon(
                          Icons.person,
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
                          if (formKey.currentState?.validate() ?? false) {
                            Navigator.of(context).pushNamed('/login-page');
                          }
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          Navigator.of(context).pushNamed('/login-page');
                        }
                      },
                      child: const Text(
                        'Preencher Depois',
                        style: TextStyle(
                            color: kSecomdaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
