import 'package:course_ui/utils/string_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeworkItem extends StatelessWidget {
  Color primaryColor;
  String section;
  String title;
  String chapter;
  String description;
  String time;
  IconData icon;
  bool isSelected;
  HomeworkItem(
      {required this.section,
      required this.primaryColor,
      required this.title,
      required this.chapter,
      required this.description,
      required this.time,
      required this.icon,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          section.capitalize(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500),
              borderRadius: BorderRadius.circular(20),
              color: isSelected ? primaryColor : Colors.white),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.white : primaryColor,
                        shape: BoxShape.circle),
                    child: Icon(
                      icon,
                      color: isSelected ? primaryColor : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.capitalize(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: isSelected ? Colors.white : primaryColor),
                      ),
                      Text(
                        chapter.toUpperCase(),
                        style: TextStyle(
                          color: Colors.orange.shade900,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.white : primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                              color: isSelected ? primaryColor : Colors.white),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          size: 18,
                          color: isSelected ? primaryColor : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Icon(
                    CupertinoIcons.time_solid,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
