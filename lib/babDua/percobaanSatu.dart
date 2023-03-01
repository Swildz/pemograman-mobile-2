import 'package:flutter/material.dart';

class percobaanSatu extends StatefulWidget {
  const percobaanSatu({Key? key}) : super(key: key);

  @override
  State<percobaanSatu> createState() => _percobaanSatuState();
}

class _percobaanSatuState extends State<percobaanSatu> {
  int _counter = 1;
  int _jumlah = 0;
  String _text = "Ganjil";
  void _incrementCounter() {
    setState(() {
      _counter++;
      /*
      Percobaan 1
       */
      if (_counter > 10) {
        _counter = 1;
      }
      if (_counter % 2 == 0) {
        _text = "Genap";
      } else {
        _text = "Ganjil";
      }

      /*
      Percobaan 2
       */

      // if(_counter>10){
      //   _counter=0;
      //   }
      // _text = "Ganjil :";
      // for(int i=0; i<=_counter;i++){
      //   if(i%2 !=0){
      //     _text += '${i}';
      //   }
      // }

      /*
      Bilangan Genap Kelipatan 3 mulai dari 1 sampai n!
      */

      // _text="Genap : ";
      // for (int i=1; i<=_counter;i++){
      //   if(i%3 == 0 && i %2 == 0){
      //     _text += '$i';
      //   }
      // }

      /*
      Bilangan Prima mulai dari 1 sampai n!
       */
      // for(int i=1;i<=_counter;i++){
      //   if((_counter==2 || _counter==3 || _counter==5 || _counter==7 ) || (_counter%2!=0 && _counter%3!=0 && _counter%5!=0 && _counter%7!=0 )){
      //     _text='Bilangan Prima : $i';
      //   }else{
      //     _text='Bukan Bilangan Prima : $i';
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
