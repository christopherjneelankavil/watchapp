import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: ElevatedButton(onPressed: (){
            //Material
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
