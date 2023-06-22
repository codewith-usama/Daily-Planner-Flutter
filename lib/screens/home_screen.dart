import 'package:flutter/material.dart';
import '../components/tabs_container.dart';
import '../utils/config.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late DateTime currentDate;
  late String currentDayName;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    currentDayName = DateFormat('EEEE').format(currentDate);
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd, MMMM yyyy').format(currentDate);
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.size.width * 0.08,
              vertical: mediaQuery.size.height * 0.02,
            ),
            child: Column(
              children: [
                Text(
                  'Good Morning, Zara!',
                  style: TextStyle(
                    color: const Color(0xFF7B3400),
                    fontSize: fontSize * 0.11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: const Color(0xFFEC9665),
                      size: mediaQuery.size.width * 0.10,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.03,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                            suffixIcon: const Icon(Icons.mic)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.02,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    formattedDate,
                    style: TextStyle(
                      color: const Color(0xFF7B3400),
                      fontSize: mediaQuery.size.width * 0.07,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    currentDayName,
                    style: TextStyle(
                      color: const Color(0xFFEC9665),
                      fontSize: mediaQuery.size.width * 0.06,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  padding: const EdgeInsets.only(right: 12, left: 12),
                  alignment: Alignment.centerLeft,
                  width: mediaQuery.size.width * 0.85,
                  height: mediaQuery.size.height * 0.10,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE5B092),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Row(
                    children: [
                      Text(
                        "You've a \nmeeting today",
                        style: TextStyle(
                          fontSize: fontSize * 0.07,
                          color: const Color(0xFF7B3400),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(""),
                      ),
                      Icon(
                        Icons.donut_large_sharp,
                        color: const Color(0xFF7B3400),
                        size: mediaQuery.size.height * 0.07,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: const Text(
                    'Daily Reminder',
                    style: TextStyle(
                      color: Color(0xFF000001),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 25.0,
                  ),
                  width: mediaQuery.size.width * 0.55,
                  height: mediaQuery.size.height * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9DBDAF),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(
                    child: Text(
                      'Stay hydrated',
                      style: TextStyle(
                        fontSize: fontSize * 0.07,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width * 0.85,
                  height: mediaQuery.size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEDEDED),
                  ),
                  child: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      appBar: PreferredSize(
                        preferredSize: const Size.fromHeight(50.0),
                        child: AppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: const Color(0xFFEDEDED),
                          bottom: TabBar(
                            tabs: [
                              Tab(
                                child: Text(
                                  'ACTIVE',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize * 0.03,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'COMPLETED',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize * 0.03,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'UPCOMING',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize * 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      body: Container(
                        decoration:
                            BoxDecoration(color: homeScreenBackgroundColor),
                        child: TabBarView(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFB8AAEF),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Read notes',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.06,
                                  horizontalPaddingValue: 50.0,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFA1BFB2),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Clean room',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.06,
                                  horizontalPaddingValue: 50.0,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFB8AAEF),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text:
                                      'Complete web projects \nSent mail to HR',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.05,
                                  horizontalPaddingValue:
                                      mediaQuery.size.width * 0.01,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFE3CF9C),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Fill out scholarship form',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.05,
                                  horizontalPaddingValue:
                                      mediaQuery.size.width * 0.01,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFF9DBDAF),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Read notes',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.06,
                                  horizontalPaddingValue: 50.0,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFB8AAEF),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Prepare for exams',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.05,
                                  horizontalPaddingValue:
                                      mediaQuery.size.width * 0.07,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                TabsContainer(
                                  color: const Color(0xFFE3CF9C),
                                  width: mediaQuery.size.width * 0.85,
                                  height: mediaQuery.size.height * 0.10,
                                  text: 'Watch videos for decor',
                                  imagePath: 'assets/plant_4.png',
                                  fontSize: fontSize * 0.05,
                                  horizontalPaddingValue:
                                      mediaQuery.size.width * 0.05,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
