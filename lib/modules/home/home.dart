import 'package:ageflux/modules/insight/details.dart';
import 'package:ageflux/shared/components/inputs.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> months = [];
  String selectedMonth = "";

  // Inputs Controller
  TextEditingController dayInput = TextEditingController();
  TextEditingController yearInput = TextEditingController();

  int monthInput = 0;

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
          color: const Color(0xff2C3E50),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 120),
                child: Column(
                  children: const [
                    Text(
                      "Date of Birth",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Enter your date of birth ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: DefaultInput(
                        controller: dayInput,
                        type: TextInputType.number,
                        title: "Day",
                        backgroundColor: Colors.white,
                        radius: 6,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        flex: 2,
                        child: DefaultDropdown(
                            initial: selectedMonth,
                            items: months,
                            onChange: (value) {
                              setState(() {
                                selectedMonth = value;
                                monthInput = months.indexOf(selectedMonth) + 1;
                              });
                            })),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 1,
                      child: DefaultInput(
                        controller: yearInput,
                        title: "Year",
                        type: TextInputType.number,
                        backgroundColor: Colors.white,
                      ),
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
        backgroundColor: const Color(0xff2D9FDA),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => DetailsScreen(
                    day: int.parse(dayInput.text),
                    month: monthInput,
                    year: int.parse(yearInput.text),
                  )),
            ),
          );
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
