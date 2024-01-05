
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(
          child: Text('DittCoders\nWatchApp',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 190, 185, 185),
        child:  Center(
          child: ElevatedButton(onPressed: ()async{
            //Mic access google assistant
            await LaunchApp.openApp(
              androidPackageName: 'com.google.android.apps.googleassistant',
            );
          },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const CircleBorder()),
              iconColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states){
                  return Colors.blue;
                }
              )
            ), child: const Icon(Icons.mic),
          ),
        ),
      ),
    );
  }
}
