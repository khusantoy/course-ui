import 'package:course_ui/widgets/homework_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeworkScreen extends StatelessWidget {
  List<Map<String, dynamic>> days = [
    {"day": "Tue", "date": "22", "isSelected": false},
    {"day": "Wed", "date": "23", "isSelected": false},
    {"day": "Thu", "date": "24", "isSelected": true},
    {"day": "Fri", "date": "25", "isSelected": false},
    {"day": "Sat", "date": "26", "isSelected": false},
    {"day": "Sun", "date": "27", "isSelected": false},
  ];
  List<Map<String, dynamic>> hometasks = [
    {
      "section": "english homework",
      "title": "Basic english writing",
      "chapter": "chapter-12",
      "description":
          "Enim qui excepteur deserunt ea ut.Voluptate id adipisicing aute minim.",
      "time": "40 min",
      "icon": Icons.edit,
      "isSelected": false
    },
    {
      "section": "german homework",
      "title": "Basic german listining",
      "chapter": "chapter-9",
      "description":
          "Enim qui excepteur deserunt ea ut.Voluptate id adipisicing aute minim.",
      "time": "60 min",
      "icon": Icons.headphones,
      "isSelected": true
    },
    {
      "section": "german homework",
      "title": "Basic german listining",
      "chapter": "chapter-9",
      "description":
          "Enim qui excepteur deserunt ea ut.Voluptate id adipisicing aute minim.",
      "time": "60 min",
      "icon": Icons.headphones,
      "isSelected": false
    }
  ];
  Color primaryColor = Color.fromARGB(255, 60, 65, 135);
  Widget calendarDay(String day, String date, bool isSelected) {
    return Column(
      children: [
        Text(day),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : Colors.white,
            border: Border.all(
              color: Colors.grey.shade400,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            date,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leadingWidth: 80,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.back),
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            title: const Text(
              "Homework",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.ellipsis,
                  ),
                  style: IconButton.styleFrom(
                    side: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var day in days)
                        calendarDay(day['day'], day['date'], day['isSelected']),
                    ],
                  ),
                  for (var homework in hometasks)
                    HomeworkItem(
                        primaryColor: primaryColor,
                        section: homework['section'],
                        title: homework['title'],
                        description: homework['description'],
                        chapter: homework['chapter'],
                        time: homework['time'],
                        icon: homework['icon'],
                        isSelected: homework['isSelected']),
                ],
              ),
            ),
          )),
    );
  }
}
