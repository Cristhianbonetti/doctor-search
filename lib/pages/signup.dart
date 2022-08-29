import 'package:doctor_search/constants.dart';
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
          'Voltar',
        ),
        actions: [
          Image.asset(
            "assets/images/logo1.png",
          )
        ],
      ),
    );
  }
}
