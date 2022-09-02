import 'package:flutter/material.dart';

class TextFormFiels extends StatelessWidget {
  final String hintText;

  const TextFormFiels({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
