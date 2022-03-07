import 'package:app1/screen/job_details.dart';
import 'package:app1/screen/sign_in.dart';
import 'package:app1/search_filed.dart';
import 'package:app1/title_bar.dart';
import 'package:flutter/material.dart';

import '../jobcard.dart';

class JobPosting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191720),
        body: Padding(
          padding: const EdgeInsets.only(top: 79, left: 28),
          child: Column(
            children: [
              const CustomeTitleBAr(username: "Ghulam Ali"),
              SearchField(),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                      JobCard(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add,
              color: Colors.black87,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => JobDetails()));
            }));
  }
}
