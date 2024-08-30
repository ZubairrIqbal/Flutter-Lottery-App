import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();
  int x =0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: const Text('Lottery Winning number is 4')),
            Container(
              height: 200,
              width: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 235, 235)
              ),
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child:x == 4 ?const Column(
                  children: [
                    Icon(
                      Icons.done_all,
                      color: Colors.green,
                    ),
                    Text('Congratulation you have won the lottery',textAlign: TextAlign.center,)
                  ],
                ): Column(
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                    Text('Better luck next time. Your number is $x try again',textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
            x =random.nextInt(6);
            setState(() {
              
            });
        },
        child: Icon(Icons.add),
        ),
      ),
    );
  }
}