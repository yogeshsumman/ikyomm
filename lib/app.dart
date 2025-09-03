import 'app_credentials/app_imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.to(LoginPage());
            },
            child: Text("Login Page"),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
