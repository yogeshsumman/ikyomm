import 'package:flutter_svg/flutter_svg.dart';
import '../../app_credentials/app_imports.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

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
                    offset: const Offset(0, -5), // adjust as needed
                    child: const Text(
                      "Your Number",
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                // Name Field
                Transform.translate(
                  offset: const Offset(0, 0), // tweak X, Y
                  child: Stack(children: [
              
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Email label
                Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, -12),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                      child: const Text(
                        "Just IKYOMM",
                        style: TextStyle(fontSize: 26, color: Colors.black87),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Button
                ElevatedButton(
                  onPressed: () {
                    Get.to(NameEmailPage());
                  },
                  child: Text("1.3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
