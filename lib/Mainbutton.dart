import 'package:flutter/material.dart';
class MainButton extends StatelessWidget {
  final String label;
  final GestureTapCallback? onPress;

  const MainButton({required this.onPress,required this.label});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
              onTap: onPress,
              child: Container(
                margin: const EdgeInsets.only(right: 24, top: 20, bottom: 50 ),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  label,style: const TextStyle(color: Color(0xFF191720), fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            )
        )
      ],
    );
  }
}
