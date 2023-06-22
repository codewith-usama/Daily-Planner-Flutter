import 'package:daily_planner/components/remember_me_check_box.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../utils/config.dart';
import 'home_page.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    DateTime now = DateTime.now();

    int dayNumber = now.day;
    String month = _getMonthName(now.month);
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: onBoardingColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: onBoardingColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          title: const Text(
            'Calendar',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.size.width * 0.05,
            ),
            child: Column(
              children: [
                TableCalendar(
                  calendarFormat: _calendarFormat,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$dayNumber',
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            month,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '3 tasks and 1 event',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  height: mediaQuery.size.height * 0.12,
                  margin: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.20,
                    top: 5.0,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF78AC96),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lunch with Emma',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: mediaQuery.size.width * 0.04,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'BBQ Tonight',
                        style: TextStyle(
                          fontSize: mediaQuery.size.width * 0.04,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: mediaQuery.size.width * 0.20,
                    top: 7.0,
                    bottom: 20.0,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFCC7948),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          'to do list',
                          style: TextStyle(
                            color: Color(0xFFBEA99A),
                          ),
                        ),
                      ),
                      RememberMeCheckBox(
                        rememberMeMessage: 'Call uncle',
                        fillColor: Color(0xFF79896A),
                        checkColor: Colors.white,
                        textColor: Color(0xFFD9C4B5),
                      ),
                      RememberMeCheckBox(
                        rememberMeMessage: 'Wash makeup brushes',
                        fillColor: Color(0xFF79896A),
                        checkColor: Colors.white,
                        textColor: Color(0xFFD9C4B5),
                      ),
                      RememberMeCheckBox(
                        rememberMeMessage: 'Clean my room',
                        fillColor: Color(0xFF79896A),
                        checkColor: Colors.white,
                        textColor: Color(0xFFD9C4B5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getMonthName(int month) {
    const monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];

    return monthNames[month - 1];
  }
}
