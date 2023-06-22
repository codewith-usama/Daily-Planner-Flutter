import 'package:daily_planner/components/auth_button.dart';
import 'package:daily_planner/components/success.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

class CreateNewTask extends StatefulWidget {
  const CreateNewTask({super.key});

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        _startTime = selectedTime;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        _endTime = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: onBoardingColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: onBoardingColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_downward_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Create New Task',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: mediaQuery.size.width * 0.12,
                right: mediaQuery.size.width * 0.12,
                top: mediaQuery.size.height * 0.02,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: mediaQuery.size.width * 0.12,
                right: mediaQuery.size.width * 0.12,
                top: mediaQuery.size.height * 0.02,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Date',
                  hintStyle: TextStyle(color: Colors.black),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF91A88B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.size.width * 0.12,
                    vertical: mediaQuery.size.height * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                'Start time',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Container(
                                height: 25.0,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: const Color(0xFFD9D9D9),
                                ),
                                child: Center(
                                  child: Text(
                                    _startTime != null
                                        ? _startTime!.format(context)
                                        : '9:30 AM',
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () => _selectStartTime(context),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                'End time',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Container(
                                height: 25.0,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: const Color(0xFFD9D9D9),
                                ),
                                child: Center(
                                  child: Text(
                                    _endTime != null
                                        ? _endTime!.format(context)
                                        : '9:30 PM',
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () => _selectEndTime(context),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const TextField(
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFBCC5BA),
                          filled: true,
                          hintText: 'Enter text',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: AuthButton(
                          text: 'Create',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Success(
                                  message: 'Task Sucessfully\ncreated',
                                ),
                              ),
                            );
                          },
                          height: mediaQuery.size.height * 0.08,
                          width: mediaQuery.size.width * 0.65,
                          backgroundColor: const Color(0xFFD9D9D9),
                          textColor: const Color(0xFF7B3400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
