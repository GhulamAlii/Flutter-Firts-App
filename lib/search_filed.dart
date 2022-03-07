import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 27, top: 20),
      padding: const EdgeInsets.only(top: 8,bottom: 7, left: 15),
      decoration: BoxDecoration(
          color: const Color(0xff1E1C24),
          border: Border.all(color: const Color(0xff5D5D67)),
          borderRadius: BorderRadius.circular(10)
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search_rounded,color: Color(0xff5D5D67),),
          hintText: "Search Keywords",
          hintStyle: TextStyle(color:Color(0xff8F8F9E)),
          border: InputBorder.none,
        ),
      ),

    );
  }
}
