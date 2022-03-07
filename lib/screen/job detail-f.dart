import 'package:app1/Description%20Filed.dart';
import 'package:app1/Mainbutton.dart';
import 'package:app1/screen/job_posting.dart';
import 'package:app1/screen/sign_in.dart';
import 'package:flutter/material.dart';

import '../Text_filed.dart';

class JobDetails_F extends StatelessWidget {
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
              const TextInputField( placeholder: "Flutter Developer", inputText: ""),
              const DescriptionField( inputText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", placeholder: 'Describe Requirements'),
              const Spacer(),
              const MainButton(onPress: null, label: "Submit")
            ],
          ),
        ));
  }
}
