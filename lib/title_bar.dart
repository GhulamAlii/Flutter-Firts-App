import 'package:app1/screen/sign_in.dart';
import 'package:flutter/material.dart';

class CustomeTitleBAr extends StatelessWidget {
   final String username;

  const CustomeTitleBAr({required this.username});



  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text(
        "Welcome",
        style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold),
    ),
    Text(
    username,
    style: const TextStyle(color: Colors.white, fontSize: 25),
    )
    ],
    ),
    Expanded(
    child: GestureDetector(
    onTap: () {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SignIn()));
    },
    child: Container(
    margin: const EdgeInsets.only(left: 170, top: 20),
    child: const Icon(
    Icons.logout_rounded,
    color: Colors.white,
    ),
    ),
    ))
    ],
    );
  }
}
