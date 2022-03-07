import 'package:app1/screen/sign_in.dart';
import 'package:flutter/material.dart';
import '../Mainbutton.dart';
import '../Text_filed.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff191720),
        body:  Container(
          margin: const EdgeInsets.only(top: 110, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                "Let's sign you up",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              const Text("Welcome \nJoin the community",
                  style: const TextStyle(color: const Color(0xffffffff), fontSize: 29)),
              const SizedBox(height: 60),
              const TextInputField(placeholder: "Enter your name",inputText: ""),
              const TextInputField(placeholder: "Enter your name",inputText: ""),
              const TextInputField(placeholder: "Enter your name",inputText: ""),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Already have an account? ", style: TextStyle(color: Color(0xff8F8F9E)),),
                  Text("Sign In" ,style: TextStyle(color: Color(0xffffffff)))
                ],
              ),
               MainButton(
                label: "Sign Up",
                onPress: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SignIn()));
                }
              ),

            ],
          ),
        )


    );

  }
}
