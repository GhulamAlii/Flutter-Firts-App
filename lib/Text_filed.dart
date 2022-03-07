import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String placeholder;
  final String inputText;

  const TextInputField({required this.placeholder, required this.inputText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24, top: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xff1E1C24),
          border: Border.all(color: const Color(0xff5D5D67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
          style: const TextStyle(color: Colors.white, fontSize: 15),
          controller: TextEditingController(text: inputText),
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
            border: InputBorder.none,
          )),
    );
  }
}
