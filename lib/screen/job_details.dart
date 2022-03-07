import 'package:app1/Description%20Filed.dart';
import 'package:app1/Mainbutton.dart';
import 'package:app1/screen/job_posting.dart';
import 'package:app1/screen/sign_in.dart';
import 'package:flutter/material.dart';

import '../Text_filed.dart';

class JobDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191720),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 89, left: 27, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => JobPosting()));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.white,
                      )),
                  const SizedBox(width: 20),
                  const Text(
                    "Add New Job",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              const TextInputField( placeholder: "Enter Your Position", inputText: ""),
              const DescriptionField( inputText: "", placeholder: 'Describe Requirements'),
              const Spacer(),
              const MainButton(onPress: null, label: "Submit")
            ],
          ),
        ));
  }
}
