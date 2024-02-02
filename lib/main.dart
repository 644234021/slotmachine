// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const SlotMachineApp());
}

class SlotMachineApp extends StatelessWidget {
  const SlotMachineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slot Machine',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Slot(),
    );
  }
}

class Slot extends StatefulWidget {
  const Slot({super.key});

  @override
  State<Slot> createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var slotnum1 = 1;
  var slotnum2 = 2;
  var slotnum3 = 4;

void spin(){
    setState(() {
      slotnum1 = Random().nextInt(9) + 1;
      slotnum2 = Random().nextInt(9) + 1;
      slotnum3 = Random().nextInt(9) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slot Machine"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: null, 
                      child: Image.asset('assets/images/$slotnum1.png'),
                    ),       
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: null, 
                      child: Image.asset('assets/images/$slotnum2.png'),
                    ),       
                  ),
                 Expanded(
                    child: TextButton(
                      onPressed: null, 
                      child: Image.asset('assets/images/$slotnum3.png'),
                    ),       
                  ),
                  
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 10,
                
              ),
              onPressed: spin, 
              child: Text(
                "Spin!!",
                style: TextStyle(fontSize: (20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

