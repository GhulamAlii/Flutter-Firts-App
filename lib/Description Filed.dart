import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  final String placeholder;
  final String inputText;

  const DescriptionField({required this.placeholder,required this.inputText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:28,right: 27 ),
      padding:EdgeInsets.only(top: 15,left: 20),
      decoration: BoxDecoration(
        color: const Color(0xff1E1C24),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xff5D5D67))
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white,fontSize: 15),
          controller: TextEditingController(text: inputText),
          keyboardType: TextInputType.multiline,
          maxLines: 20,
          decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xff8F8F9E),fontSize: 15),
          border: InputBorder.none
        )
        ),
    );
  }
}
