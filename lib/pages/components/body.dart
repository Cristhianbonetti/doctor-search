import 'package:doctor_search/constants.dart';
import 'package:doctor_search/pages/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // Este tamanho nos fornece altura total e largura de nossa tela
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Container(
              width: 400,
              height: 150,
              child: Image.asset(
                "assets/images/logo1.png",
              ),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: TextButton(
                onPressed: () {},
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
          ),
          const SizedBox(height: 20),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kSecomdaryColor,
                  elevation: 10,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(130, 8, 130, 8),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
