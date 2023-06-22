import 'package:daily_planner/components/remember_me_check_box.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../utils/config.dart';
import 'create_new_task.dart';
import 'home_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  late List<CameraDescription> cameras;
  late final picker = ImagePicker();

  void openGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // ignore: avoid_print
      print('no image selected');
    }
  }

  Future<void> accessCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    // ignore: avoid_print
    print('in camera');
  }

  void checkMicrophonePermission() async {
    PermissionStatus status = await Permission.microphone.status;

    if (status.isDenied) {
      // Permission hasn't been granted yet. Request permission.
      await Permission.microphone.request();
    }

    if (status.isGranted) {
      // Microphone permission has been granted. Proceed with using the microphone.
      // ...
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.10,
          ),
          child: Column(
            children: [
              TextField(
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
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 10.0,
                    ),
                    width: mediaQuery.size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFF99A687),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Grocery Items',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        RememberMeCheckBox(
                          rememberMeMessage: 'Bread',
                          fillColor: Colors.black45,
                          checkColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        RememberMeCheckBox(
                          rememberMeMessage: 'Eggs',
                          fillColor: Colors.black45,
                          checkColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        RememberMeCheckBox(
                          rememberMeMessage: 'Cereal',
                          fillColor: Colors.black45,
                          checkColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        RememberMeCheckBox(
                          rememberMeMessage: 'Biscuits',
                          fillColor: Colors.black45,
                          checkColor: Colors.white,
                          textColor: Colors.black,
                        ),
                        RememberMeCheckBox(
                          rememberMeMessage: 'Milk',
                          fillColor: Colors.black45,
                          checkColor: Colors.white,
                          textColor: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: mediaQuery.size.width * 0.40,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 15.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFFB36532),
                    ),
                    child: const Text(
                      'A flower is the part of a'
                      'plant which is often brightly '
                      'coloured, grows at the end of'
                      ' a stem, anf only services for a short time',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/todo1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: mediaQuery.size.width * 0.13,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(
                  left: 12.0,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0E0D7),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: openGallery,
                      icon: Icon(
                        Icons.photo,
                        size: mediaQuery.size.height * 0.05,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: accessCamera,
                      icon: Icon(
                        Icons.camera_alt,
                        size: mediaQuery.size.height * 0.05,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: checkMicrophonePermission,
                      icon: Icon(
                        Icons.mic_rounded,
                        size: mediaQuery.size.height * 0.05,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateNewTask(),
                          ),
                        );
                      },
                      backgroundColor: const Color(0xFF7B3400),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFFDBCEC4),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
