// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modern_std_app/pages/login_page.dart';
import 'package:modern_std_app/util/job_card.dart';
import 'package:modern_std_app/util/job_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobCardDetails = [
    [
      'lib/images/ubericon.png',
      'UI/UX Designer',
      '45',
    ],
    ['lib/images/nikeicon.png', 'Front-End Developer', '48'],
    ['lib/images/metaicon.png', 'Dev-Ops Engineer', '56'],
    ['lib/images/nikeicon.png', 'Project Manager', '65'],
  ];

  final List jobTileDetails = [
    ['lib/images/nikeicon.png', 'Jr. Front-End Dev.', '28', 'Nike'],
    ['lib/images/nikeicon.png', 'Project Manager', '65', 'Nike'],
    ['lib/images/ubericon.png', 'Q/C Lead', '45', 'Uber'],
    ['lib/images/metaicon.png', 'Dev-Ops Lead', '64', 'Meta'],
  ];

  var menuTextStyles = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey[100],
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: Text(
            'J O B  A P P',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
              color: Colors.grey[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      DrawerHeader(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple[600],
                          ),
                          child: Center(
                            child: Text('L O G O',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.home, color: Colors.grey[100]),
                          ),
                          title: Text('H O M E', style: menuTextStyles)),
                      ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.chat_bubble,
                                color: Colors.grey[100]),
                          ),
                          title: Text('I N B O X', style: menuTextStyles)),
                      ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Icon(Icons.settings, color: Colors.grey[100]),
                          ),
                          title:
                              Text('S E T T I N G S', style: menuTextStyles)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.logout, color: Colors.grey[100]),
                          ),
                          title: Text('L O G O U T', style: menuTextStyles)),
                    ),
                  )
                ],
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Discover a New Path',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            child: Icon(Icons.search),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: 'Search'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.settings, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            // JOB CARDS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('For You',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[900],
                  )),
            ),
            SizedBox(height: 25),
            Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: jobCardDetails.length,
                    itemBuilder: (context, index) {
                      return JobCard(
                        companyLogoImage: jobCardDetails[index][0],
                        jobTitle: jobCardDetails[index][1],
                        payRate: jobCardDetails[index][2],
                      );
                    })),
            SizedBox(height: 25),

            Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Recently Added',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                    fontSize: 20,
                  ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: jobTileDetails.length,
                    itemBuilder: (context, index) {
                      return JobTile(
                        companyLogoImage: jobTileDetails[index][0],
                        jobTitle: jobTileDetails[index][1],
                        payRate: jobTileDetails[index][2],
                        companyName: jobTileDetails[index][3],
                      );
                    }),
              ),
            )
          ],
        ));
  }
}
