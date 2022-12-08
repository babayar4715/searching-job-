import 'package:flutter/material.dart';
import 'package:flutter_application_23/util/recent_job_card.dart';

import 'util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ["uber", "Flutter Developer", "assets/uber.png", 70],
    ["Google", "SoftWare Engineer", 'assets/google.png', 90],
    ["Apple", "Front End dev", "assets/apple.jpg", 85]
  ];
  final List recent_job_card = [
    ["Nike", "UI Desiner", "assets/nike-min.png", 45],
    ["Google", "SoftWare Engineer", 'assets/google.png', 64],
    ["Apple", "Front End dev", "assets/apple.jpg", 55]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
            ),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                height: 60,
                'assets/menu.png',
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'discovered a new path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: const [
                  // Container(
                  //   height: 30,
                  //   child: Image.asset('assets/search.png'),
                  // ),
                  TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.search_sharp),
                      border: OutlineInputBorder(),
                      labelText: 'search new job',
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            child: Text(
              'For you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  LogoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              }),
            ),
          ),
          const SizedBox(height: 50.0),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: ListView.builder(
                itemCount: recent_job_card.length,
                itemBuilder: ((context, index) {
                  return RecentJobCard(
                    companyName: recent_job_card[index][0],
                    jobTitle: recent_job_card[index][1],
                    LogoImagePath: recent_job_card[index][2],
                    hourlyRate: recent_job_card[index][3],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
