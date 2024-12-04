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
int x = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning Number Is $x')),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: x== 5?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.error, color: Colors.redAccent, size: 35,),
                  SizedBox(height: 15,),
                  Text('better luck $x\n TRY Again', textAlign: TextAlign.center,)
                ],
              ) :
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(.3),
                      borderRadius: BorderRadius.circular(15)
                ),
                child: x==5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all, color: Colors.green, size: 35,),
                    SizedBox(height: 15,),
                    Text('congrats $x\n ', textAlign: TextAlign.center,)
                  ],
                ) :  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.redAccent, size: 35,),
                    SizedBox(height: 15,),
                    Text('CONGRATULATIONS YOU WON ', textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )


          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(x > 5 ? Icons.place : Icons.refresh),
        ),
      ),
    );
  }
}




