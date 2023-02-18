import 'package:ageflux/shared/components/borders.dart';
import 'package:ageflux/shared/components/inputs.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> months = [];
  String selectedMonth = "";

  @override
  void initState() {
    months = [
      "Junary",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];

    selectedMonth = months[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: const Color(0xff2A9D8E),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Enter Your Birth-date ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: DefaultInput(
                          type: TextInputType.number,
                          title: "Day",
                          backgroundColor: Colors.white),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        flex: 2,
                        child: DefaultDropdown(
                            initial: selectedMonth,
                            items: months,
                            onChange: (value) {
                              setState(() {
                                selectedMonth = value;
                              });
                            })),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 1,
                      child: DefaultInput(
                          title: "Year", backgroundColor: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        elevation: 0,
        hoverElevation: 0,
        backgroundColor: const Color(0xff16B4A3),
        onPressed: () {},
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
