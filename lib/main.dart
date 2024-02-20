import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp ( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Center(
              child: Text(
            'Lottery app',
            style: TextStyle(color: Colors.white, fontFamily: ('NotoSerif')),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Center ( 
                child: Text(
              'Lottery winning number is 4',
              style: TextStyle(fontFamily: 'NotoSerif'),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        const  Center(
                            child: Icon(
                              Icons.done_all_outlined,
                              color: Colors.green,
                              size: 35,
                            ),
                          ),
                   const       SizedBox(
                            height: 10,
                          ),
                     const     Center(
                            child: Text(
                              'Congratulations ',
                              style: TextStyle(fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Your Number was $x',
                              style: const TextStyle(fontFamily: 'NotoSerif'),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         const Center(
                            child: Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                     const     SizedBox( 
                            height: 10,
                          ),
                    const      Center(
                            child: Text(
                              'Better Luck Next Time ',
                              style: TextStyle(fontFamily: 'NotoSerif'),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Your Number was $x',
                              style: const TextStyle(fontFamily: 'NotoSerif'),
                            ),
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(random.nextInt(10).toString());
            x = random.nextInt(100);
            print(x);
            setState(() {});
          },
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.lightBlue,
          child: const Icon(
            Icons.replay_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
