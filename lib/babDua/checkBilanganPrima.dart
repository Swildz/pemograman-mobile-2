import 'package:flutter/material.dart';

class PrimeNumberChecker extends StatefulWidget {
  @override
  _PrimeNumberCheckerState createState() => _PrimeNumberCheckerState();
}

class _PrimeNumberCheckerState extends State<PrimeNumberChecker> {
  int number = 0;
  bool isPrime = false;

  void checkPrime() {
    if (number < 2) {
      isPrime = false;
    } else {
      isPrime = true;
      for (int i = 2; i <= number / 2; i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Number Checker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter a number:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter a number',
              ),
              onChanged: (value) {
                setState(() {
                  number = int.tryParse(value) ?? 0;
                  isPrime = false;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                checkPrime();
                setState(() {});
              },
              child: Text('Check'),
            ),
            SizedBox(height: 20.0),
            Text(
              isPrime
                  ? '$number is a prime number'
                  : '$number is not a prime number',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
