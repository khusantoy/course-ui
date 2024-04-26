import 'package:course_ui/utils/string_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  Color primaryColor = Color.fromARGB(255, 60, 65, 135);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.back,
            ),
            style: IconButton.styleFrom(
              side: BorderSide(
                color: Colors.grey.shade500,
              ),
            ),
          ),
          title: Text("course details".capitalize()),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
                style: IconButton.styleFrom(
                  side: BorderSide(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/course.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "english for beginner".capitalize(),
                style: TextStyle(
                    fontSize: 23,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Text(
                            "24",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Chapter",
                            style: TextStyle(
                                color: Color.fromARGB(255, 60, 65, 135),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Text(
                            "12",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Exam",
                            style: TextStyle(
                                color: Color.fromARGB(255, 60, 65, 135),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        children: [
                          Text(
                            "05",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Rewards",
                            style: TextStyle(
                                color: Color.fromARGB(255, 60, 65, 135),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "about course".capitalize(),
                style: TextStyle(fontSize: 18, color: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  "Eu nostrud occaecat irure est reprehenderit ex. Eu nostrud occaecat irure est reprehenderit ex. Eu nostrud occaecat irure est reprehenderit ex.",
                  style: TextStyle(fontSize: 14, color: primaryColor)),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "Eu nostrud occaecat irure est reprehenderit ex. Eu nostrud occaecat irure est reprehenderit ex.",
                  style: TextStyle(fontSize: 14, color: primaryColor))
            ],
          ),
        ),
      ),
    );
  }
}
