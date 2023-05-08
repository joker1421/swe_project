import 'package:flutter/material.dart';
import 'package:swe_project/Payed.dart';

class Cardinfo extends StatelessWidget {
  const Cardinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card information'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment(-0.9, -0.7),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the card number',
                ),
              ),
            ),
            Container(
              alignment: Alignment(-0.9, -0.5),
              width: MediaQuery.of(context).size.width * 0.4,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Expiration date',
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment(0, -0.3),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'CVV',
                ),
              ),
            ),
            Container(
              alignment: Alignment(0, 0.5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('198 SAR'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ),
            Container(
              alignment: Alignment(0, 0.7),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Payed()),
                  );
                },
                child: Text('Checkout'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ),
          ],
        ));
  }
}
