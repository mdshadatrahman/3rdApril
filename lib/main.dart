import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: SafeArea(
        child: Column(
          children: [
            //progress section
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(deviceWidth * 0.12),
                  child: const LinearProgressIndicator(
                    backgroundColor: Color(0xffA4A6A3),
                    color: Color(0xff03C76F),
                    value: .5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceWidth * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      StepperWidget(
                        label: 'Email',
                        imagePath: 'images/mail.png',
                        color: Color(0xff198CDD),
                      ),
                      StepperWidget(
                        label: 'Phone No',
                        imagePath: 'images/phone.png',
                        color: Color(0xff198CDD),
                      ),
                      StepperWidget(
                        label: 'Identity',
                        imagePath: 'images/id.png',
                        color: Color(0xff198CDD),
                      ),
                      StepperWidget(
                        label: 'Image',
                        imagePath: 'images/image.png',
                        color: Color(0xffA4A6A3),
                      ),
                      StepperWidget(
                        label: 'Video',
                        imagePath: 'images/video.png',
                        color: Color(0xffA4A6A3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Image Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: deviceHeight * 0.35,
                  width: deviceWidth * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1648763190162-8b2b08af8fe1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=754&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: deviceHeight * 0.35,
                  width: deviceWidth * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE7E7E7),
                  ),
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      child: const Icon(Icons.add),
                      backgroundColor: const Color(0xff03C76F),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.08),
            //Text Section
            Column(
              children: const [
                Text(
                  'Upload your selfie',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffB3B3B3),
                  ),
                ),
                Text(
                  'Take a photo of your face without glasses, like int the example.\nIt should be clear.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.08),
            //Upload button
            Container(
              width: deviceWidth * 0.4,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Upload',
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff03C76F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.color,
  }) : super(key: key);
  final String label;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        CircleAvatar(
          backgroundColor: color,
          foregroundImage: AssetImage(imagePath),
        ),
      ],
    );
  }
}
