import 'package:ageflux/models/dater.dart';
import 'package:ageflux/models/strings.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int day;
  final int month;
  final int year;

  DetailsScreen({
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2D9FDA),
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text("AgeFlux"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        )
                      ],
                      title: const Text("AgeFlux"),
                      content: const Text("Simple & Easy Age Calculator"),
                    );
                  });
            },
            icon: const Icon(Icons.help),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
            color: Color(0xff2C3E50),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "You Lived",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 24),
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Dater.calculateAge(birthDate()),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Deep Dive",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 24),
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Months",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInMonths(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.all(14),
                          color: const Color(0xffEEEEEE),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Weeks",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInWeeks(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.all(14),
                          color: const Color(0xffEEEEEE),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Days",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInDays(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.all(14),
                          color: const Color(0xffEEEEEE),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hours",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInHours(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.all(14),
                          color: const Color(0xffEEEEEE),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Minutes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInMinutes(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.all(14),
                          color: const Color(0xffEEEEEE),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Seconnds",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              StringUtils.addCommas(
                                  Dater.calculateAgeInSeconds(birthDate())),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Next birthday after",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 24),
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Dater.calculateNextBirthdate(birthDate()),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "More Details",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 24),
                    padding: const EdgeInsets.all(24),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Coming Soon ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTime birthDate() {
    return DateTime(year, month, day);
  }

  // String formatedAge() {
  //   var date = Dater.calculateAge(birthDate());
  //   return "${date['years']} years, ${date['months']} months and ${date['days']} days";
  // }
}
