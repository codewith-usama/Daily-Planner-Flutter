import 'package:daily_planner/components/success.dart';
import 'package:flutter/material.dart';
import '../utils/config.dart';

class DailyRemainder extends StatefulWidget {
  const DailyRemainder({super.key});

  @override
  State<DailyRemainder> createState() => _DailyRemainderState();
}

class _DailyRemainderState extends State<DailyRemainder> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: homeScreenBackgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Daily Reminders',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.15,
          vertical: mediaQuery.size.height * 0.05,
        ),
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.08,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Select from our pre\nmade reminders'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFA1BFB2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DropdownButton<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 24.0,
                isExpanded: true,
                hint: const Text('Select'),
                items: <String>[
                  'Stay hyderated',
                  'Respect everyone',
                  'Think positive',
                  'Eat healthy',
                  'Prioritize yourself',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.10,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              alignment: Alignment.centerLeft,
              child: const Text('Or customize yourself'),
            ),
            TextField(
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                fillColor: const Color(0xFFE3CF9C),
                filled: true,
                hintText: 'Enter text',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Success(
                      message: 'Remainder Successfully\nupdated',
                    ),
                  ),
                );
              },
              child: Container(
                width: double.maxFinite,
                height: mediaQuery.size.height * 0.06,
                decoration: BoxDecoration(
                  color: const Color(0xFFDDCAC0),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: const Color(0xFF7B3400),
                      fontSize: mediaQuery.size.height * 0.03,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
