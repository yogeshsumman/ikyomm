import 'package:flutter_svg/flutter_svg.dart';
import '../../app_credentials/app_imports.dart';

class NameEmailPage extends StatelessWidget {
  const NameEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFED9C9), // Light peach top
              Color.fromARGB(255, 211, 189, 252), // Soft purple bottom
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top Sun SVG with move control
                Transform.translate(
                  offset: const Offset(0, -10), // move UP by 10
                  child: SvgPicture.asset("assets/svgs/ellipse.svg", width: 80, height: 80),
                ),
                const SizedBox(height: 50),

                // Name label
                Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, -14), // adjust as needed
                    child: const Text(
                      "What shall we call you?",
                      style: TextStyle(fontSize: 22, color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                // Name Field
                Transform.translate(
                  offset: const Offset(0, 0), // tweak X, Y
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/name_field.svg",
                        width: double.infinity,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Email label
                Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                      child: const Text(
                        "Where can we send your reflections & reminders?",
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                Transform.translate(
                  offset: const Offset(0, 0), // adjust
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/email_field.svg",
                        width: double.infinity,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // Button
                Transform.translate(
                  offset: const Offset(0, 0), // adjust if needed
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to next screen
                    },
                    child: SvgPicture.asset(
                      "assets/svgs/lets_meet_button.svg",
                      width: double.infinity,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 50),

                ElevatedButton(
                  onPressed: () {
                    Get.to(NumberPage());
                  },
                  child: Text("1.2"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
