import 'package:app1/Mainbutton.dart';
import 'package:app1/Text_filed.dart';
import 'package:app1/screen/job_posting.dart';
import 'package:app1/screen/signup.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff191720),
      body: Padding(
        padding: const EdgeInsets.only(top:110, left: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("Let's Sign you in",style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text("Welcome Back\nyou've been missed! ",style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 82),
            const TextInputField(placeholder: "Enter your email address" ,inputText: ""),
            const TextInputField(placeholder: "Enter your password" ,inputText: ""),
            const Spacer(),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Already have an account? ", style: TextStyle(color: Color(0xff8F8F9E)),),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignUp()));
                },
              child:const Text("Register" ,style: TextStyle(color: Color(0xffffffff)),)
,              )
                ],
          ),
            MainButton(onPress: (){
             Navigator.of(context).push(
                 MaterialPageRoute(builder: (_) => JobPosting()));
           }, label:"Sign In")
          ],
        ),
      ),
    );
  }
}
